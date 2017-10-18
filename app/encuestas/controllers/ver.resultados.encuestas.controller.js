(function () { 
    'use strict';
	
    angular
	.module('app')
	.controller('VerResultadosEncuestasController', VerResultadosEncuestasController);
    
    function VerResultadosEncuestasController (EvaluacionService, EncuestasService, $location, $rootScope, UtilService, $mdToast, DialogService, RestService, AuthenticationService, Constants, UserService, $q) {
        /* jshint validthis: true */
        console.log('init VerResultadosEncuestasController');
        
        //Check session
        AuthenticationService.isAuth();
        if(EvaluacionService.evaluacion.id_encuesta===undefined){
            DialogService.errorData();
        }
        var scope = this;  
        scope.institucionesEncuesta=[];
        scope.evaluacion={};
        scope.encuesta={};
        scope.encuesta=EncuestasService.encuesta;
        scope.evaluacion=EvaluacionService.evaluacion;
        scope.evaluaciones=[];
        scope.cargar=cargar;
        
        scope.cargar();
        
        
        
        function cargar(){
            var data={};
            data.id_encuesta=scope.encuesta.id_encuesta;
            data.id_institucion=scope.evaluacion.id_institucion;
            EvaluacionService.obtenerEvaluacionesInstitucion(data).then(
                    function(response){
                        scope.evaluaciones=response.data;
                    },
                    function(e){
                        console.log('Error en obtenerEvaluacionesInstitucion'+e);
                    }
                );
        }
        
        
        
    };

})();