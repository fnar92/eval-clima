(function () { 
    'use strict';
	
    angular
        .module('app.authentication')
        .factory('AuthenticationService', AuthenticationService );

    function AuthenticationService($http, $location, $rootScope, $localStorage, Base64Service, $cookies) {
        var service = {};
     
        service.SetCredentials = setCredential;
        service.ClearCredentials = clearCredential;
        service.obtenerCookie=obtenerCookie;
        service.generarCookie=generarCookie;
        service.logout=logout;
        service.isAuth=isAuth;
        service.Auth=false;
        service.authData={};
        return service;
       
        function logout(){
            var cookies = $cookies.getAll();
            console.log(cookies);
            angular.forEach(cookies, function(value, key) {
                $cookies.remove(key);
            });
            service.ClearCredentials();
            service.authData={};
            service.Auth=false;
            $rootScope.isAuth=false;
        }
        function obtenerCookie(clave) {
            return $cookies.getObject(clave);
        }
        
        function generarCookie(clave, valor) {
            var date = new Date();
            var opciones = {
                "expires": new Date(date.getTime() + (3*(60 *(60 *(1000)))))
            };
            $cookies.putObject(clave, valor, opciones);
        }
        
        function setCredential(id, username, password, rols, type) {
            var authdata = Base64Service.encode(username + ':' + password);
            var data={
                    id: id,
                    username: username,
                    authdata: authdata,
                    role: rols,
                    type: type                    
                };
            $localStorage.$default({
                globals:{
                    id: id,
                    username: username,
                    authdata: authdata,
                    role: rols,
                    type: type                    
                }                       
            });
            $rootScope.tipoUsuario=$localStorage.globals.type;
            $http.defaults.headers.common['Authorization'] = 'Basic ' + authdata;
            
            service.generarCookie('session', true);
            service.generarCookie('session_data', data);
        }

        function clearCredential() {
            $localStorage.$reset();
            $http.defaults.headers.common.Authorization = 'Basic ';            
        }
        
        function isAuth() {
            console.log('Valid session');
            var session=service.obtenerCookie('session');
            var session_data=service.obtenerCookie('session_data');
            if(session!==undefined){
                service.Auth=true;
                $rootScope.isAuth=true;
                service.authData=session_data;
                return true;
            }else{
                service.Auth=false;
                $rootScope.isAuth=false;
                service.authData={};
                service.logout();
                $rootScope.$on('$locationChangeStart', function (event, next, current) {
                    if($location.path() !== '/login' && !$rootScope.isAuth){
                        $location.path('/login');
                    }
                });
                return false;
            }
            /*if($localStorage.globals!==undefined){
                service.Auth=true;
                $rootScope.isAuth=true;
                return true;
            }else{
                service.Auth=false;
                $rootScope.isAuth=false;
                return false;
            }*/
        }
    }

})();
