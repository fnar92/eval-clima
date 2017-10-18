<!DOCTYPE html>
<html lang="es" ng-app="app" ng-controller="MainController as mc">
<head>
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>HRWise Eval-Clima</title>
    <!-- Bootstrap core CSS-->
    <link href="assets/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    
    <!-- Custom fonts for this template-->
    <link href="assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- Page level plugin CSS-->
    <link href="assets/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="assets/css/sb-admin.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/wise.css" />
    
     <!-- Bootstrap core JavaScript-->
    <script src="assets/vendor/jquery/jquery.min.js?v=<?= $fecha ?>"></script>
    <script src="assets/vendor/popper/popper.min.js?v=<?= $fecha ?>"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.min.js?v=<?= $fecha ?>"></script>
    
  
    <link rel="stylesheet" href="assets/css/material/angular-material.css" />
    <link rel="stylesheet" href="assets/css/main.css" />
    
    <!--  Notifications Plugin    -->
    <script charset="utf-8" src="assets/js/jquery.easing.1.3.js?v=<?= $fecha ?>"></script>
    <script charset="utf-8" src="assets/js/bootstrap.notification.js?v=<?= $fecha ?>"></script>
    <script charset="utf-8" src="assets/js/sweetalert-dev.js?v=<?= $fecha ?>" type="text/javascript"></script>
    
    <!-- js angular -->
    <script src="assets/libs/angular/1.5.8/angular.min.js?v=<?= $fecha ?>"></script>        
    <script src="assets/libs/data-tables/angular-resource.min.js?v=<?= $fecha ?>"></script>
    <script src="assets/libs/data-tables/jquery.dataTables.min.js?v=<?= $fecha ?>"></script>              
    <script src="assets/libs/data-tables/angular-datatables.min.js?v=<?= $fecha ?>"></script>
    <script src="assets/libs/bootstrap/bootstrap.min.js?v=<?= $fecha ?>"></script>       
    <script src="assets/libs/material-1.1.0/angular-animate.min.js?v=<?= $fecha ?>"></script>
    <script src="assets/libs/material-1.1.0/angular-aria.min.js?v=<?= $fecha ?>"></script>
    <script src="assets/libs/material-1.1.0/angular-messages.min.js?v=<?= $fecha ?>"></script>
    <script src="assets/libs/material-1.1.0/angular-material.min.js?v=<?= $fecha ?>"></script>
    <script src="assets/libs/angular/complements/angular-ui-router/angular-ui-router.min.js?v=<?= $fecha ?>"></script>
    <script src="assets/libs/angular/complements/angular-storage/ngStorage.min.js?v=<?= $fecha ?>"></script>
    <script src="assets/libs/angular/complements/angular-cookies/angular-cookies.min.js?v=<?= $fecha ?>"></script>
    <script src="assets/libs/angular/complements/angular-moments/moment-with-locales.min.js?v=<?= $fecha ?>"></script>
    <script src="assets/libs/angular/complements/angular-moments/angular-moment.min.js?v=<?= $fecha ?>"></script>
    <script src="assets/libs/angular/complements/angular-moment-picker/angular-moment-picker.min.js?v=<?= $fecha ?>"></script>
    <script src="assets/libs/angular/complements/angular-navBar/navBar.js?v=<?= $fecha ?>"></script>
    <script src="assets/libs/angular/complements/angular-text-editor/textAngular-rangy.min.js?v=<?= $fecha ?>"></script>
    <script src="assets/libs/angular/complements/angular-text-editor/textAngular-sanitize.min.js?v=<?= $fecha ?>"></script>
    <script src="assets/libs/angular/complements/angular-text-editor/textAngular.min.js?v=<?= $fecha ?>"></script>
    <script src="assets/libs/angular/complements/angular-text-editor/textAngularSetup.js?v=<?= $fecha ?>"></script>
    <!-- end js angular -->	
	
</head>
    <div ui-view></div>

    <!-- inject: app global js -->
    <script src="app/app.js?v=<?= $fecha ?>"></script>
    <script src="app/app.filters.js?v=<?= $fecha ?>"></script>
    <script src="app/app-config.js?v=<?= $fecha ?>"></script>
    <script src="app/app-run.js?v=<?= $fecha ?>"></script>
    <script src="app/app-constants.js?v=<?= $fecha ?>"></script>
    <!-- endinject -->
	
    <!-- inject: util services js -->
    <script src="app/utils/services/rest.service.js?v=<?= $fecha ?>"></script>
    <script src="app/utils/services/base64.service.js?v=<?= $fecha ?>"></script>
    <script src="app/utils/services/dialog.service.js?v=<?= $fecha ?>"></script>
    <script src="app/utils/services/validations/validation.service.js?v=<?= $fecha ?>"></script>
    <script src="app/utils/services/shared.service.js?v=<?= $fecha ?>"></script>
    <script src="app/utils/services/util.service.js?v=<?= $fecha ?>"></script>
    <!-- endinject -->   
    
    <!-- inject: login js -->
    <script src="app/login/services/login.service.js?v=<?= $fecha ?>"></script>
    <script src="app/login/controllers/login.controller.js?v=<?= $fecha ?>"></script>
    <script src="app/login/controllers/main.controller.js?v=<?= $fecha ?>"></script>
    <!-- endinject -->

    <!-- inject: Usuario servicio -->
    <script src="app/user/services/user.service.js?v=<?= $fecha ?>"></script>
    <!-- endinject -->
    
    
    <!-- inject: dashboard js -->
    <script src="app/dashboard/controllers/dashboard.controller.js?v=<?= $fecha ?>"></script>
    <!-- endinject -->

    <!-- inject: preguntas js -->
    <script src="app/preguntas/services/preguntas.service.js?v=<?= $fecha ?>"></script>
    <script src="app/preguntas/controllers/preguntas.controller.js?v=<?= $fecha ?>"></script>
    <!-- endinject -->
    
    <!-- inject: encuestas js -->
    <script src="app/encuestas/services/encuentas.service.js?v=<?= $fecha ?>"></script>
    <script src="app/encuestas/controllers/crear.encuesta.controller.js?v=<?= $fecha ?>"></script>
    <script src="app/encuestas/controllers/configurar.encuesta.controller.js?v=<?= $fecha ?>"></script>
    <script src="app/encuestas/controllers/ver.encuestas.controller.js?v=<?= $fecha ?>"></script>
    <script src="app/encuestas/controllers/asignar.encuesta.controller.js?v=<?= $fecha ?>"></script>
    <script src="app/encuestas/controllers/resultados.encuestas.controller.js?v=<?= $fecha ?>"></script>
    <script src="app/encuestas/controllers/ver.resultados.encuestas.controller.js?v=<?= $fecha ?>"></script>
    <!-- endinject -->
    
    <!-- inject: evaluacion js -->
    <script src="app/evaluacion/services/evaluacion.service.js?v=<?= $fecha ?>"></script>
    <script src="app/evaluacion/controllers/evaluacion.controller.js?v=<?= $fecha ?>"></script>
    <!-- endinject -->
    
    <!-- inject: admin js -->
    <script src="app/admin/services/admin.service.js?v=<?= $fecha ?>"></script>
    <script src="app/admin/controllers/admin.controller.js?v=<?= $fecha ?>"></script>
    <script src="app/admin/controllers/usuario.controller.js?v=<?= $fecha ?>"></script>
    <script src="app/admin/controllers/institucion.controller.js?v=<?= $fecha ?>"></script>
    <script src="app/admin/controllers/cat.controller.js?v=<?= $fecha ?>"></script>
    <script src="app/admin/controllers/fam.controller.js?v=<?= $fecha ?>"></script>
    <!-- endinject -->
    
    <!-- inject: user js -->
    <script src="app/user/controllers/user.controller.js?v=<?= $fecha ?>"></script>
    <!-- endinject -->
    
    <script>
        function hide(){
            window.scrollTo(0, 0);
            $("#loading").hide();
        };

        function show(){
            window.scrollTo(0, 0);
            $("#loading").show();
        };
        
	function mensaje(tipo, titulo, mensaje, duracion) {
		console.log('[Action] Mensaje');
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
        
        function error(){
            mensaje("error","Error inesperado","Ocurrio un error al recuperar su información",4000);
            location.href= "#/";
            window.scrollTo(0, 0); 
        };
        
        function json(json){
            return JSON.stringify(json);
        }
	
        function confirmaMsj(titulo,mensaje,bottonOK,accionOK,bottonCancelar,accionCancelar){
    
            var options = {
                "type": "info",
                "img": "assets/img/icons/info.png",
                "width": "400",
                "content": "<strong>" + titulo + "</strong> <br/>" + mensaje,
                "html": true,
                "autoClose": false,
                "timeOut": 5,
                "position": "topRight",
                "effect": "slide",
                "easing": "jswing",
                "duration": 200,
                "buttons":[
                    {
                        "text" : bottonOK,
                        "addClass": "btn btn-primary",
                        "click" : function (id){
                             accionOK();
                             $.notification('close',id);
                        }
                    },
                    {
                        "text" : bottonCancelar,
                        "addClass": "btn btn-default",
                        "click" : function (id){
                             accionCancelar();
                             $.notification('close',id);

                        }
                    }
                ]
            };
            $.notification(options);
        };
        
        
    </script>
        
    <div class="" id="loading">
        <div class="row">
            <div id="loader">
                    <div class="dot"></div>
                    <div class="dot"></div>
                    <div class="dot"></div>
                    <div class="dot"></div>
                    <div class="dot"></div>
                    <div class="dot"></div>
                    <div class="dot"></div>
                    <div class="dot"></div>
                    <div class="lading"></div>
            </div>
        </div>
    </div>
    
    <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="login.html">Logout</a>
          </div>
        </div>
      </div>
    </div>
    
    <!--<footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Copyright © Your Website 2017</small>
        </div>
      </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" style="cursor: pointer">
      <i class="fa fa-angle-up"></i>
    </a>
    
</html>