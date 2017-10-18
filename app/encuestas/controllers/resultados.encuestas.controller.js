(function () { 
    'use strict';
	
    angular
	.module('app')
	.controller('ResultadosEncuestasController', ResultadosEncuestasController);
    
    function ResultadosEncuestasController (EvaluacionService, EncuestasService, $location, $rootScope, UtilService, $mdToast, DialogService, RestService, AuthenticationService, Constants, UserService, $q) {
        /* jshint validthis: true */
        console.log('init ResultadosEncuestasController');
        
        //Check session
        AuthenticationService.isAuth();
        if(EncuestasService.encuesta.id_encuesta===undefined){
            DialogService.errorData();
        }
        var scope = this;  
        scope.institucionesEncuesta=[];
        scope.encuesta={};
        scope.encuesta=EncuestasService.encuesta;
        
        scope.cargar=cargar;
        scope.verEvaluaciones=verEvaluaciones;
        
        scope.cargar();
        
        function cargar(){
            EncuestasService.obtenerEvaluadosEncuesta(scope.encuesta.id_encuesta).then(
                    function(response){
                        scope.institucionesEncuesta=response.data;
                    },
                    function(e){
                        console.log('Error en obtenerEvaluadosEncuesta'+e);
                    }
                );
        }
        
        function verEvaluaciones(i){
            var obj={};
            obj.id_encuesta=scope.encuesta.id_encuesta;
            obj.id_institucion=i.id_institucion;
            EvaluacionService.evaluacion=i;
            window.scrollTo(0, 0);
            location.href='#/encuestas/resultados/ver';
        }
        
    };

})();