(function () { 
    'use strict';
	
    angular
	.module('app')
	.controller('ConfigurarEncuestaController', ConfigurarEncuestaController);
    
    function ConfigurarEncuestaController ($stateParams, EncuestasService, PreguntasService, $location, $rootScope, $state, $mdDialog, $mdToast, DialogService, RestService, AuthenticationService, Constants, UserService, $q) {
        /* jshint validthis: true */
        console.log('init ConfigurarEncuestaController');
        //Check session
        AuthenticationService.isAuth();
        var scope = this;  
        if(!EncuestasService.encuesta.id_encuesta){
            DialogService.errorData();
        }
        scope.encuesta={};
        scope.encuesta=EncuestasService.encuesta;
        scope.encuestaDetalle=[];
        scope.preguntas=[];
        scope.origen=EncuestasService.origen;
        
        scope.obtenerEncuesta=obtenerEncuesta;
        scope.obtenerEncuestaDetalle=obtenerEncuestaDetalle;
        scope.load=load;
         scope.cargar=cargar;
        scope.currentPage=0;
        scope.currentPage2=0;
        
        
        scope.addDelPregunta=addDelPregunta;
        
        scope.cargar();
        
        function addDelPregunta(p){
            if(p.checked===undefined){
                var data={};
                data.id_encuesta=scope.encuesta.id_encuesta;
                data.id_tema=p.id_tema;
                data.id_pregunta=p.id_pregunta;
                EncuestasService.eliminarDetalleEncuesta(data).then(
                    function(response){
                        console.log(response);
                        DialogService.success();
                        scope.cargar();
                    },
                    function (e){
                        console.log('Error eliminarDetalleEncuesta'+e);
                    }
                );
            }
            if(p.checked===false){
                var data={};
                data.id_encuesta=scope.encuesta.id_encuesta;
                data.id_tema=p.id_tema;
                data.id_pregunta=p.id_pregunta;
                EncuestasService.eliminarDetalleEncuesta(data).then(
                    function(response){
                        console.log(response);
                        DialogService.success();
                        scope.cargar();
                    },
                    function (e){
                        console.log('Error eliminarDetalleEncuesta'+e);
                    }
                );
            }else if(p.checked===true){
                var data={};
                data.id_encuesta=scope.encuesta.id_encuesta;
                data.id_tema=p.id_tema;
                data.id_pregunta=p.id_pregunta;
               EncuestasService.agregarDetalleEncuesta(data).then(
                    function(response){
                        console.log(response);
                        DialogService.success();
                        scope.cargar();
                    },
                    function (e){
                        console.log('Error agregarDetalleEncuesta'+e);
                    }
                );
            }
        }
        
        function cargar(){
            scope.load().then(
                function(response){
                    scope.encuesta=response[0].data;
                    scope.encuestaDetalle=response[1].data;
                    scope.preguntas=response[2].data;
                    var x=1;
                    var xx=1;
                    for (var i = 0; i < scope.encuestaDetalle.length; i++) {
                        for (var j = 0; j < scope.encuestaDetalle[i].preguntas.length; j++) {
                            scope.encuestaDetalle[i].preguntas[j].num=xx;
                            xx++;
                        }
                        scope.encuestaDetalle[i].num=x;
                        x++;
                    }

                    x=1;
                    xx=1;
                    for (var i = 0; i < scope.preguntas.length; i++) {
                        for (var j = 0; j < scope.preguntas[i].preguntas.length; j++) {
                            scope.preguntas[i].preguntas[j].num=xx;
                            xx++;
                        }
                        scope.preguntas[i].num=x;
                        x++;
                    }
                    
                    var preguntasE=[];
                    for (var i = 0; i < scope.preguntas.length; i++) {
                        for (var j = 0; j < scope.preguntas[i].preguntas.length; j++) {
                            preguntasE.push(scope.preguntas[i].preguntas[j]);
                        }
                    }

                    var preguntasD=[];
                    for (var i = 0; i < scope.encuestaDetalle.length; i++) {
                        for (var j = 0; j < scope.encuestaDetalle[i].preguntas.length; j++) {
                            preguntasD.push(scope.encuestaDetalle[i].preguntas[j]);
                        }
                    }

                    for (var i = 0; i < scope.preguntas.length; i++) {
                        for (var j = 0; j < scope.preguntas[i].preguntas.length; j++) {
                            for (var x = 0; x < preguntasD.length; x++) {
                                if(scope.preguntas[i].preguntas[j].id_pregunta===preguntasD[x].id_pregunta){
                                    scope.preguntas[i].preguntas[j].checked=true;
                                }
                            }
                        }
                    }
                },
                function(e){
                    DialogService.error();
                    console.log(e);
                }
            );
        }
    
        function load(){
            var promesas=[];
            promesas.push(EncuestasService.getEncuesta(scope.encuesta.id_encuesta));
            promesas.push(EncuestasService.getEncuestaDetalle(scope.encuesta.id_encuesta));
            promesas.push(PreguntasService.getPreguntas());
            return $q.all(promesas);
        }
        
        function obtenerEncuesta(){
            EncuestasService.getEncuesta(scope.encuesta.id_encuesta).then(
                function(response){
                    scope.encuesta=response.data;
                },
                function (e){
                    console.log('Error encuesta'+e);
                }
            );
        }
        
        function obtenerEncuestaDetalle(){
            EncuestasService.getEncuestaDetalle(scope.encuesta.id_encuesta).then(
                function(response){
                    scope.encuestaDetalle=response.data;
                },
                function (e){
                    console.log('Error encuesta'+e);
                }
            );
        }
        
    };

})();