(function () { 
    'use strict';
	
    angular
	.module('app')
	.controller('CrearEncuestaController', CrearEncuestaController);
    
    function CrearEncuestaController ($stateParams, EncuestasService, $location, $rootScope, $state, $mdDialog, $mdToast, DialogService, RestService, AuthenticationService, Constants, UserService, $q) {
        /* jshint validthis: true */
        console.log('init CrearEncuestaController');
        
        //Check session
        AuthenticationService.isAuth();
        var scope = this;  
        scope.encuesta={};
        scope.crearEncuesta=crearEncuesta;
        
        function crearEncuesta(ev){
            DialogService.confirmar(ev, '¿Guardar información?', function(){
                EncuestasService.guardarEncuesta(scope.encuesta).then(
                        function(response){
                            DialogService.success();
                            EncuestasService.encuesta=response.data;
                            window.scrollTo(0, 0);
                            location.href='#/encuestas/configurar';
                        },
                        function(e){
                            DialogService.error();
                        }
                    );
            });
        }
        
        
    };

})();