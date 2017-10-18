(function () { 
    'use strict';
	
    angular
	.module('app')
	.controller('AsignarEncuestaController', AsignarEncuestaController);
    
    function AsignarEncuestaController ($stateParams, EncuestasService, PreguntasService, $location, $rootScope, $state, $mdDialog, $mdToast, DialogService, RestService, AuthenticationService, Constants, UserService, $q) {
        /* jshint validthis: true */
        console.log('init AsignarEncuestaController');
        //Check session
        AuthenticationService.isAuth();
        var scope = this;  
        if(!EncuestasService.encuesta.id_encuesta){
            DialogService.errorData();
        }
        scope.origen=EncuestasService.origen;
        scope.evaluadosEncuesta=[];
        scope.encuesta={};
        scope.encuesta=EncuestasService.encuesta;
        scope.obtenerEvaluadosEncuesta=obtenerEvaluadosEncuesta;
        
        scope.evaluado={};
        
        scope.agregarEvaluado=agregarEvaluado;
        scope.agregarEvaluadoAction=agregarEvaluadoAction;
        scope.cancelar=cancelar;
        scope.eliminarEvaluado=eliminarEvaluado;
        scope.obtenerEvaluadosEncuesta();
        
        function cancelar(){
            $("#modal_asignar_ins").modal('hide');
            scope.evaluado={};
        }
        
        function agregarEvaluado(){
            $("#modal_asignar_ins").modal('show');
        }
        
        function agregarEvaluadoAction(ev){
            console.log(scope.evaluado);
            window.scrollTo(0, 0);
            DialogService.confirmar(ev, '¿Añadir inistitución evaluada?', function(){
                
                EncuestasService.guardarInstitucion(scope.evaluado).then(
                        function(response){
                            console.log(response);
                            if(response.data.id_institucion!==undefined){
                                var data={};
                                data.id_institucion=response.data.id_institucion;
                                data.id_encuesta=scope.encuesta.id_encuesta;
                                EncuestasService.guardarEvaluadoEncuesta(data).then(
                                    function(response){
                                            console.log(response);
                                        scope.obtenerEvaluadosEncuesta();
                                        DialogService.success();
                                        scope.cancelar();
                                    },
                                    function(e){
                                        DialogService.error();
                                    }
                                );
                            }
                        },
                        function(e){
                            DialogService.error();
                        }
                    );
            
                
            });
        }
        
        function obtenerEvaluadosEncuesta(){
            EncuestasService.obtenerEvaluadosEncuesta(scope.encuesta.id_encuesta).then(
                function(response){
                    scope.evaluadosEncuesta=response.data;
                },
                function (e){
                    console.log('Error encuesta'+e);
                }
            );
        }
        
        function eliminarEvaluado(ev, e){
            var data={};
                data.id_institucion=e.id_institucion;
                data.id_encuesta=e.id_encuesta;
                data.id_institucion_encuesta=e.id_institucion_encuesta;
                data.borrado='1';
            console.log(data);
            window.scrollTo(0, 0);
            DialogService.confirmar(ev, '¿Eliminar inistitución evaluada?', function(){
                
                EncuestasService.guardarEvaluadoEncuesta(data).then(
                        function(response){
                            scope.obtenerEvaluadosEncuesta();
                            DialogService.success();
                        },
                        function(e){
                            DialogService.error();
                        }
                    );
            });
        }
        
    };

})();