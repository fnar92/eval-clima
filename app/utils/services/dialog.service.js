(function () { 
    'use strict';

     angular
        .module('app.utils')
        .factory('DialogService',DialogService);

    function DialogService($mdDialog, $mdToast) {
        var service={};
        service.dialogTpl=dialogTpl;
        service.dialogConfirm=dialogConfirm;
        service.confirmar=confirmar;
        service.success=success;
        service.error=error;
        service.mensaje=mensaje;
        service.errorData=errorData;
        /*return {
            dialogTpl: dialogTpl,
            dialogConfirm: dialogConfirm,
            confirmar: confirmar
        };*/
        return service;

        function errorData(){
            service.mensaje("error","Error inesperado","Ocurrio un error al recuperar su información",4000);
            location.href= "#/";
            window.scrollTo(0, 0); 
        }
        
        function mensaje(tipo, titulo, mensaje, duracion) {
		if (typeof duracion === "undefined") {
			duracion = 4000;
		}
		var img = "assets/img/icons/alert.png";
		switch (tipo) {
			case "alert":
			{
				img = "assets/img/icons/alert.png";
				break;
			}
			case "info":
			{
				img = "assets/img/icons/info.png";
				break;
			}
			case "success":
			{
				img = "assets/img/icons/success.png";
				break;
			}
			case "error":
			{
				img = "assets/img/icons/error.png";
				break;
			}
			default:
				break;
		}
		var options = {
			"type": tipo,
			"img": img,
			"width": "400",
			"content": "<strong>" + titulo + "</strong>  <br/>" + mensaje,
			"html": true,
			"autoClose": true,
			"timeOut": duracion,
			"position": "topRight",
			"effect": "slide",
			"easing": "jswing",
			"duration": 200
		};
		$.notification(options);
	};
        
        function success(){
            service.mensaje('success', 'Guardar información', 'Se han guardado los datos correctamente');
        }
        
        function error(){
            service.mensaje('error', 'Guardar información', 'Ocurrio un error al guardar la información, intente mas tarde.');
        }
        
        function dialogTpl(scope, data, template, ctrl) {

            return {
                controller: ctrl,
                templateUrl: template,
                parent: angular.element(document.body),
                clickOutsideToClose:true,
                locals: {
                    data: data
                }, // sent data
                fullscreen: scope.customFullscreen // Only for -xs, -sm breakpoints.
            };

        }

        function dialogConfirm(ev, title, quest, btnYes, btnNo) {

            return $mdDialog.confirm()
                .title(title)
                .textContent(quest)
                .ariaLabel('Lucky day')
                .targetEvent(ev)
                .ok(btnYes)
                .cancel(btnNo);
        }
        
        function confirmar(ev, quest, action){
            window.scrollTo(0, 0);
            var confirm = service.dialogConfirm(ev,'Confirmación de solicitud', quest,'Si','No');
            $mdDialog.show(confirm).then(function() {
                action();
            }, function() {
                $mdDialog.hide();
            });      
        }
    }
	
})();