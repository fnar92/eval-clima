(function () { 
    'use strict';
	
    angular
	.module('app')
	.controller('EvaluacionController', EvaluacionController);
    
    function EvaluacionController ($stateParams, EvaluacionService, EncuestasService, PreguntasService, $location, $rootScope, $state, $mdDialog, $mdToast, DialogService, RestService, AuthenticationService, Constants, UserService, $q) {
        /* jshint validthis: true */
        console.log('init EvaluacionController');
        //Check session
        AuthenticationService.isAuth();
        var scope = this;  
        if(!EvaluacionService.evaluacion.id_encuesta){
            DialogService.errorData();
        }
        
        scope.evaluacion=EvaluacionService.evaluacion;
        scope.examen=[];
        scope.respuestaEncuesta={};
        
        scope.cargarExamen=cargarExamen;
        scope.guardarRespuestaEncuesta=guardarRespuestaEncuesta;
        scope.guardarRepuesta=guardarRepuesta;
        
        scope.cargarExamen();
        
        function guardarRepuesta(pregunta, escala){
            var data={};
            data.id_respuesta_encuesta=scope.respuestaEncuesta.id_respuesta_encuesta;
            data.id_detalle_encuesta=pregunta.id_detalle_encuesta;
            data.id_encuesta=pregunta.id_encuesta;
            data.id_institucion=scope.respuestaEncuesta.id_institucion;
            data.id_tema=pregunta.id_tema;
            data.id_pregunta=pregunta.id_pregunta;
            data.id_escala=escala.id_escala;
            EvaluacionService.guardarRespuesta(data).then(
                    function(response){
                        console.log(response);
                    },
                    function(e){
                        DialogService.error();
                    }
            );
        }
        
      
        function guardarRespuestaEncuesta(){
            EvaluacionService.guardarRespuestaEncuesta(scope.respuestaEncuesta).then(
                    function(response){
                        
                    },
                    function(e){
                        console.log(e);
                    }
            );
        }
        
        function cargarExamen(){
            var data={};
            data.id_encuesta=scope.evaluacion.id_encuesta;
            data.id_institucion=scope.evaluacion.id_institucion;
            EvaluacionService.guardarRespuestaEncuesta(data).then(
                    function(response){
                        scope.respuestaEncuesta=response.data;
                        scope.respuestaEncuesta.id_encuesta=scope.evaluacion.id_encuesta;
                        return EncuestasService.getEncuestaDetalle(scope.evaluacion.id_encuesta);
                    },
                    function(e){
                        console.log(e);
                    }
            ).then(
                    function(response){
                        scope.examen=response.data;
                    },
                    function (e){
                        console.log('Error en getEncuestaDetalle'+e);
                        DialogService.errorData();
                    }
                    );
        }
        
    }
})();