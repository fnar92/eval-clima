(function () { 
    'use strict';
	
    angular
	.module('app')
	.controller('VerEncuestasController', VerEncuestasController);
    
    function VerEncuestasController ($stateParams, EncuestasService, $location, $rootScope, UtilService, $mdToast, DialogService, RestService, AuthenticationService, Constants, UserService, $q) {
        /* jshint validthis: true */
        console.log('init VerEncuestasController');
        
        //Check session
        AuthenticationService.isAuth();
        
        var scope = this;  
        scope.encuestas=[];
        scope.listaCat=[];
        scope.currentPage=0;
        scope.encuesta={};
        scope.anterior=anterior;
        scope.siguiente=siguiente;
        scope.pageSize = 5; /*Paginador*/
        scope.currentPage = 0; /*Paginador*/
        scope.numberOfPages = numberOfPages; /*Paginador*/
        
        scope.configurarEncuesta=configurarEncuesta;
        scope.editarEncuesta=editarEncuesta;
        scope.guardarEncuestaAction=guardarEncuestaAction;
        
        scope.eliminarEncuesta=eliminarEncuesta;
        scope.cancelar=cancelar;
        scope.obtenerCatalogoEstatus=obtenerCatalogoEstatus;
        scope.asignarEvaluados=asignarEvaluados;
        
        scope.detalles=detalles;
        scope.evaluados=evaluados;
        scope.verResultados=verResultados;
        //scope.loadEncuestas();
        scope.obtenerCatalogoEstatus();
        scope.load=load;
        scope.cargar=cargar;
        scope.iniciar=iniciar;
        scope.verificarConfiguradas=verificarConfiguradas;
        scope.cargar();
    
        function verResultados(e){
            EncuestasService.encuesta=e;
            EncuestasService.origen=1;
            window.scrollTo(0, 0);
            location.href='#/encuestas/resultados';
        }
        
        function iniciar(){
            EncuestasService.iniciar().then(
                    function(response){
                        location.reload();
                    },
                    function(e){
                        console.log('Error iniciar'+e);
                    }
                    );
        }
        
        function cargar(){
            scope.load().then(
                function(response){
                    scope.encuestas=response[0].data;
                    scope.verificarConfiguradas();
                },
                function (e){
                    console.log('Error encuestas cat'+e);
                }
            );
        }
        
        function verificarConfiguradas(){
            scope.detalles().then(
                function(response1){
                    scope.evaluados().then(
                        function(response){
                            var promesas=[];
                            for (var i = 0; i < scope.encuestas.length; i++) {
                                var data=response1[i].data;
                                var data2=response[i].data;
                                
                                if(scope.encuestas[i].id_estatus_encuesta==='1'||
                                        scope.encuestas[i].id_estatus_encuesta==='2'){
                                    
                                    if(data.length>0&&data2.length>0){
                                       var obj={};
                                       obj.id_encuesta=scope.encuestas[i].id_encuesta;
                                       obj.id_estatus_encuesta=2;
                                       obj.borrado=0;
                                       promesas.push(EncuestasService.guardarEncuesta(obj));
                                    }else{
                                       var obj={};
                                       obj.id_encuesta=scope.encuestas[i].id_encuesta;
                                       obj.id_estatus_encuesta=1;
                                       obj.borrado=0;
                                       promesas.push(EncuestasService.guardarEncuesta(obj));
                                    }
                                }
                            }
                            return $q.all(promesas);
                        },
                        function (e){
                            console.log('Error detalles cat'+e);
                        }
                    ).then(
                        function (response){
                            EncuestasService.getEncuestas().then(
                                function(response){
                                    scope.encuestas=response.data;
                                },
                                function (e){
                                    console.log('Error encuestas cat'+e);
                                }
                            );
                        },
                        function (e){
                                    console.log('Error: '+e);
                        }
                    );
                },
                function (e){
                    console.log('Error detalles cat'+e);
                }
            );
        }
        
        
        function detalles(){
            var promesas=[];
            for (var i = 0; i < scope.encuestas.length; i++) {
                promesas.push(EncuestasService.getEncuestaDetalle(scope.encuestas[i].id_encuesta));
            }
            return $q.all(promesas);
        }
        
        function evaluados(){
            var promesas=[];
            for (var i = 0; i < scope.encuestas.length; i++) {
                promesas.push(EncuestasService.obtenerEvaluadosEncuesta(scope.encuestas[i].id_encuesta));
            }
            return $q.all(promesas);
        }
        
        function load(){
            var promesas=[];
            promesas.push(EncuestasService.getEncuestas());
            return $q.all(promesas);
        }
        
        function asignarEvaluados(e){
            EncuestasService.encuesta=e;
            EncuestasService.origen=1;
            window.scrollTo(0, 0);
            location.href='#/encuestas/asignar';
        }
        function cancelar(){
            location.reload();
            $("#modal_encuesta").modal('hide');
            scope.encuesta={};
        }
        
        function editarEncuesta(e){
            e.fecha_inicio=UtilService.date(e.fecha_inicio);
            e.fecha_fin=UtilService.date(e.fecha_fin);
            scope.encuesta=e;
            $("#modal_encuesta").modal('show');
        }
        
        function guardarEncuestaAction(ev){
            console.log(scope.encuesta);
            window.scrollTo(0, 0);
            DialogService.confirmar(ev, '¿Guardar Encuesta?', function(){
                var data=scope.encuesta;
                EncuestasService.guardarEncuesta(data).then(
                        function(response){
                            DialogService.success();
                            location.reload();
                        },
                        function(e){
                            DialogService.error();
                        }
                    );
            });
        }
        
        function eliminarEncuesta(ev, e){
            window.scrollTo(0, 0);
            DialogService.confirmar(ev, '¿Eliminar Encuesta?', function(){
                var data={};
                data.id_encuesta=e.id_encuesta;
                data.borrado=1;
                
                EncuestasService.guardarEncuesta(data).then(
                        function(response){
                            DialogService.success();
                            location.reload();
                        },
                        function(e){
                            DialogService.error();
                        }
                    );
            });
        }
        
        
        function obtenerCatalogoEstatus(){
            EncuestasService.obtenerCatalogoEstatus().then(
                function(response){
                    scope.listaCat=response.data;
                },
                function (e){
                    console.log('Error encuestas cat'+e);
                }
            );
        }
        
        function configurarEncuesta(e){
            EncuestasService.encuesta=e;
            EncuestasService.origen=1;
            window.scrollTo(0, 0);
            location.href='#/encuestas/configurar';
            
        }
        
        function anterior(){
            scope.currentPage = scope.currentPage - 1;
            window.scrollTo(0, 0);
        };

        function siguiente(){
            scope.currentPage = scope.currentPage + 1;
            window.scrollTo(0, 0);
        };
        
        function numberOfPages() {
            return Math.ceil(scope.encuestas.length / scope.pageSize);
        }
        
    };

})();