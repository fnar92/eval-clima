(function () { 
    'use strict';
	
    angular
        .module('app')
        .factory('EvaluacionService', EvaluacionService );

    function EvaluacionService(RestService, Constants) {
        var service = {};
        service.evaluacion={};
        
        service.guardarRespuestaEncuesta=guardarRespuestaEncuesta;
        service.guardarRespuesta=guardarRespuesta;
        service.validarEvaluacion=validarEvaluacion;
        service.obtenerEvaluacionesInstitucion=obtenerEvaluacionesInstitucion;
        return service;
        
        function validarEvaluacion(idIns){
            var url=Constants.BaseURLBack+'/evaluacion/validarEvaluacion/'+idIns;
            return RestService.get(url,'',);
        }
        
        function guardarRespuestaEncuesta(data){
            var url=Constants.BaseURLBack+'/evaluacion/guardarRespuestaEncuesta';
            return RestService.post(url,'',data);
        }
        
        function guardarRespuesta(data){
            var url=Constants.BaseURLBack+'/evaluacion/guardarRespuesta';
            return RestService.post(url,'',data);
        }
        
        function obtenerEvaluacionesInstitucion(data){
            var url=Constants.BaseURLBack+'/evaluacion/obtenerEvaluacionesInstitucion';
            return RestService.post(url,'',data);
        }
        
        
    }

})();
