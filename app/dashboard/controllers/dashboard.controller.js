(function () { 
    'use strict';
	
    angular
	.module('app.dashboard')
	.controller('DashboardController', DashboardController);
    
    function DashboardController ($localStorage, $location, EvaluacionService, $rootScope, $state, $mdDialog, $mdToast, DialogService, RestService, AuthenticationService, Constants, UserService, $q) {
        /* jshint validthis: true */
        console.log('init dashboard');
        
        //Check session
        AuthenticationService.isAuth();
        var scope = this;  
        scope.user={};
        scope.institucion={};
        scope.tipoUsuario=parseInt(AuthenticationService.authData.type);
        scope.rolUsuario=AuthenticationService.authData.role;
        scope.eval=false;
        scope.evaluacion={};
        //functions
        scope.logout = logout;
        scope.iniciarEvaluacion=iniciarEvaluacion;
        
        scope.validaEvaluacion=validaEvaluacion;
        scope.getUsuarioInstitucion=getUsuarioInstitucion;
        
        if(parseInt(scope.tipoUsuario)===2){
            $("body").toggleClass("sidenav-toggled");
            $(".navbar-sidenav .nav-link-collapse").addClass("collapsed");
            $(".navbar-sidenav .sidenav-second-level, .navbar-sidenav .sidenav-third-level").removeClass("show");
            $("#sidenavToggler").unbind("click");
            scope.user=AuthenticationService.authData;
            scope.getUsuarioInstitucion(scope.user.id);
        }
        
        function iniciarEvaluacion(){
            
            EvaluacionService.evaluacion=scope.evaluacion;
            window.scrollTo(0, 0);
            location.href='#/evaluacion';
        }
        
        function validaEvaluacion(idInstitucion){
            EvaluacionService.validarEvaluacion(idInstitucion).then(
                    function (response){
                        if(response.data.length>0){
                            scope.evaluacion=response.data[0];
                            if(scope.evaluacion.id_encuesta!==undefined){
                                scope.eval=true;
                            }
                        }
                    },
                    function (e){
                        
                    }
            );
        }
        
        function getUsuarioInstitucion(id){
            UserService.getInstitucion(id).then(
                    function (response){
                        scope.institucion=response.data;
                        scope.validaEvaluacion(scope.institucion.id_institucion);
                    },
                    function (e){
                        console.log('Error getInstitucion '+e);
                    }
            );
        }
       
        function logout(ev) { 
            DialogService.confirmar(ev, '¿Salir del sistema?', function(){
                RestService.get(Constants.BaseURLBack + '/auth/logout','','');  
                AuthenticationService.logout();
                window.location.reload();
            });
        }
        
    };

})();