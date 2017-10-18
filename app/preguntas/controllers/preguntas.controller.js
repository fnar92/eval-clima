(function () { 
    'use strict';
	
    angular
	.module('app')
	.controller('PreguntasController', PreguntasController);
    
    function PreguntasController ($stateParams, PreguntasService, $location, $rootScope, $state, $mdDialog, $mdToast, DialogService, RestService, AuthenticationService, Constants, UserService, $q) {
        /* jshint validthis: true */
        console.log('init PreguntasController');
        
        //Check session
        AuthenticationService.isAuth();
        if($stateParams.paginaTema===''||$stateParams.paginaTema==='0'){
            DialogService.errorData();
        }
        
        var scope = this;  
        scope.paginaTema=$stateParams.paginaTema-1;
        scope.preguntas=[];
        scope.tema={};
        scope.pregunta={};
        scope.currentPage = scope.paginaTema;
        scope.anterior=anterior;
        scope.siguiente=siguiente;
        
        scope.agregarTema=agregarTema;
        scope.editarTema=editarTema;
        scope.guardarTemaAction=guardarTemaAction;
        scope.eliminarTema=eliminarTema;
        
        scope.agregarPregunta=agregarPregunta;
        scope.editarPregunta=editarPregunta;
        scope.guardarPreguntaAction=guardarPreguntaAction;
        scope.eliminarPregunta=eliminarPregunta;
        
        scope.cancelar=cancelar;
        
        scope.tema_add=true;
        scope.pregunta_add=true;
        
        scope.loadPreguntas=loadPreguntas;
        scope.loadPreguntas();
        
        function loadPreguntas(){
            PreguntasService.getPreguntas().then(
                function(response){
                    scope.preguntas=response.data;
                    var xx=1;
                    var x=1;
                    for (var i = 0; i < scope.preguntas.length; i++) {
                        for (var j = 0; j < scope.preguntas[i].preguntas.length; j++) {
                            scope.preguntas[i].preguntas[j].num=x;
                            x++;
                        }
                        scope.preguntas[i].num=xx;
                        xx++;
                    }
                    
                    if(scope.currentPage>=scope.preguntas.length){
                        location.href='#/preguntas/1';
                    }
                },
                function (e){
                    console.log('Error preguntas cat'+e);
                }
            );
        }
        
        function agregarTema(){
            window.scrollTo(0, 0);
            scope.tema_add=true;
            scope.tema={};
            $("#modal_add_tema").modal('show');
        }
        
        function editarTema(t){
            window.scrollTo(0, 0);
            scope.tema_add=false;
            scope.tema=t;
            $("#modal_add_tema").modal('show');
        }
        
        function guardarTemaAction(ev){
            DialogService.confirmar(ev, '¿Guardar información?', function(){
                delete scope.tema.num;
                PreguntasService.guardarTema(scope.tema).then(
                        function(response){
                            DialogService.success();
                            if(scope.tema.id_tema===undefined){
                                scope.cancelar();
                                setTimeout(function(){
                                    if(scope.preguntas.length===0){
                                        location.href='#/preguntas/1';
                                        location.reload();
                                    }
                                    var pagina=scope.preguntas.length+1;
                                    location.href='#/preguntas/'+pagina;
                                },500);
                            }else{
                                scope.cancelar();
                                scope.loadPreguntas();
                            }
                        },
                        function(e){
                            DialogService.error();
                        }
                    );
            });
        }
        
        function eliminarTema(ev, t){
            window.scrollTo(0, 0);
            DialogService.confirmar(ev, '¿Eliminar información?', function(){
                var data={};
                data.id_tema=t.id_tema;
                data.borrado='1';
                PreguntasService.guardarTema(data).then(
                        function(response){
                            scope.loadPreguntas();
                            DialogService.success();
                            scope.cancelar();
                        },
                        function(e){
                            DialogService.error();
                        }
                    );
            });
        }
        
        function agregarPregunta(t){
            window.scrollTo(0, 0);
            scope.pregunta_add=true;
            scope.tema=t;
            scope.pregunta={};
            $("#modal_add_pregunta").modal('show');
        }
        
        function editarPregunta(t, p){
            window.scrollTo(0, 0);
            scope.tema=t;
            scope.pregunta_add=false;
            scope.pregunta=p;
            $("#modal_add_pregunta").modal('show');
        }
        
        function guardarPreguntaAction(ev){
            DialogService.confirmar(ev, '¿Guardar información?', function(){
                scope.pregunta.id_tema=scope.tema.id_tema;
                delete scope.pregunta.num;
                PreguntasService.guardarPregunta(scope.pregunta).then(
                        function(response){
                            DialogService.success();
                            scope.cancelar();
                            scope.loadPreguntas();
                        },
                        function(e){
                            console.log(e);
                        }
                    );
            });
        }
        
        function eliminarPregunta(ev,p){
            window.scrollTo(0, 0);
            DialogService.confirmar(ev, '¿Eliminar información?', function(){
                var data={};
                data.id_pregunta=p.id_pregunta;
                data.id_tema=p.id_tema;
                data.borrado='1';
                PreguntasService.guardarPregunta(data).then(
                        function(response){
                            DialogService.success();
                            scope.cancelar();
                            scope.loadPreguntas();
                        },
                        function(e){
                            DialogService.error();
                        }
                    );
            });
        }
        
        function cancelar(){
            window.scrollTo(0, 0);
            scope.tema={};
            scope.pregunta={};
            $("#modal_add_tema").modal('hide');
            $("#modal_add_pregunta").modal('hide');
        } 

        function anterior(){
            scope.currentPage = scope.currentPage - 1;
            scope.currentPage++;
            location.href='#/preguntas/'+scope.currentPage;
            window.scrollTo(0, 0);
        };

        function siguiente(){
             scope.currentPage = scope.currentPage + 1;
             scope.currentPage++;
             location.href='#/preguntas/'+(scope.currentPage);
             window.scrollTo(0, 0);
        };
        
    };

})();