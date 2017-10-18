(function () { 
    'use strict';
	
    angular
        .module('app')
        .factory('EncuestasService', EncuestasService );

    function EncuestasService(RestService, Constants) {
        var service = {};
        service.encuesta={};
        service.origen=0;
        service.guardarEncuesta=guardarEncuesta;
        service.getEncuestas=getEncuestas;
        service.getEncuesta=getEncuesta;
        service.getEncuestaDetalle=getEncuestaDetalle;
        service.agregarDetalleEncuesta=agregarDetalleEncuesta;
        service.eliminarDetalleEncuesta=eliminarDetalleEncuesta;
        service.obtenerCatalogoEstatus=obtenerCatalogoEstatus;
        service.obtenerEvaluadosEncuesta=obtenerEvaluadosEncuesta;
        service.guardarEvaluadoEncuesta=guardarEvaluadoEncuesta;
        service.guardarInstitucion=guardarInstitucion;
        service.ordenarEncuesta=ordenarEncuesta;
        service.iniciar=iniciar;
        return service;
        
        function iniciar(){
            var url=Constants.BaseURLBack+'/encuestas/iniciar';
            return RestService.get(url,'');
        }
        
        function ordenarEncuesta(id){
            var url=Constants.BaseURLBack+'/encuestas/ordenarEncuesta/'+id;
            return RestService.get(url,'');
        }
        
        function guardarInstitucion(data){
            var url=Constants.BaseURLBack+'/encuestas/guardarInstitucion';
            return RestService.post(url,'', data);
        }
        
        function guardarEvaluadoEncuesta(data){
            var url=Constants.BaseURLBack+'/encuestas/guardarEvaluadoEncuesta';
            return RestService.post(url,'', data);
        }
        
        function obtenerEvaluadosEncuesta(id){
            var url=Constants.BaseURLBack+'/encuestas/getEvaluados/'+id;
            return RestService.get(url,'');
        }
        
        function obtenerCatalogoEstatus(){
            var url=Constants.BaseURLBack+'/encuestas/getCatalogoEstatus';
            return RestService.get(url,'');
        }
        
        function guardarEncuesta(data){
            var url=Constants.BaseURLBack+'/encuestas/guardarEncuesta';
            return RestService.post(url,'', data);
        }
        
        function getEncuestas(){
            var url=Constants.BaseURLBack+'/encuestas/getEncuestas';
            return RestService.get(url,'');
        }
        
        function getEncuesta(id){
            var url=Constants.BaseURLBack+'/encuestas/getEncuesta/'+id;
            return RestService.get(url,'');
        }
        
        function getEncuestaDetalle(id){
            var url=Constants.BaseURLBack+'/encuestas/getEncuestaDetalle/'+id;
            return RestService.get(url,'');
        }
        
        function agregarDetalleEncuesta(data){
            var url=Constants.BaseURLBack+'/encuestas/agregarDetalleEncuesta';
            return RestService.post(url,'', data);
        }
        
        function eliminarDetalleEncuesta(data){
            var url=Constants.BaseURLBack+'/encuestas/eliminarDetalleEncuesta';
            return RestService.post(url,'', data);
        }
        
        
        
    }

})();
