(function () { 
    'use strict';
	
    angular
        .module('app')
        .factory('PreguntasService', PreguntasService );

    function PreguntasService(RestService, Constants, $q) {
        var service = {};
        service.getPreguntas=getPreguntas;
        service.guardarTema=guardarTema;
        service.guardarPregunta=guardarPregunta;
        return service;
        
        function getPreguntas(){
            var url=Constants.BaseURLBack+'/preguntas/getPreguntas';
            return RestService.get(url,'');
        }
        
        function guardarTema(data){
            var url=Constants.BaseURLBack+'/preguntas/guardarTema';
            return RestService.post(url,'', data);
        }
        function guardarPregunta(data){
            var url=Constants.BaseURLBack+'/preguntas/guardarPregunta';
            return RestService.post(url,'', data);
        }
    }

})();
