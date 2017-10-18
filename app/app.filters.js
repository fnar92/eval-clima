/**
 * Description:
 *     removes white space from text. useful for html values that cannot have spaces
 * Usage:
 *   {{some_text | nospace}}
 */
angular.module('app').filter('nospace', function () {
    return function (value) {
        return (!value) ? '' : value.replace(/ /g, '');
    };
}).filter('fecha1', function () {
    return function (x) {
        var meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'];
        if(x !== null){
            var date = new Date(x);
            return date.getUTCDate() + "/" + meses[date.getUTCMonth()] + "/" + date.getUTCFullYear();
        }else{
            return "";
        }
        
    };
}).filter('fecha', function(){
    return function (dateString) {
        if(dateString===undefined||dateString===null)return;
        var y=dateString.split(' ');
        if(y[1]!==undefined){
            var x=y[0].split('-');
            var xx=y[1].split(':');
            //return x[2]+'/'+x[1]+'/'+x[0]+' '+xx[0]+':'+xx[1]
            //console.log("fecha: "+x[2]+'/'+x[1]+'/'+x[0]);;
            return x[2]+'/'+x[1]+'/'+x[0];
        }else{
            var x=dateString.split('-');
            
            //console.log("fecha: "+x[2]+'/'+x[1]+'/'+x[0]);
            return x[2]+'/'+x[1]+'/'+x[0];
        }
    };
}).filter('estatusEstudio', function(){
    return function (status) {
        switch (status){
            case '1':
                return '<span class="label label-danger">Solicitado</span>';
        }
    };
}).filter('tipoAdmin', function(){
    return function (tipo) {
        switch (tipo){
            case '1':
                return 'Administrador';
            case '2':
                return 'Usuario';
        }
    };
}).filter('estatusUsuario', function(){
    return function (tipo) {
        switch (tipo){
            case '1':
                return 'Activo';
            case '0':
                return 'Inactivo';
        }
    };
});
angular
        .module('app')
        .filter('startFrom', 
        function() {
            return function(input, start) {
                    start = +start; //parse to int
                    return input.slice(start);
                };
            });
/* Diretivas */
angular.module('app')
.directive("resize", function () {
    return function (scope, element, attrs) {
        element.bind("mousedown", function () {
            scope.resize(element);
            scope.$apply();
        });
    };
})
        
.directive("remove", function () {
    return function (scope, element, attrs) {
        element.bind("mousedown", function () {
            scope.remove(element);
            scope.$apply();
        });
    };
})
       
.directive('fileModel', ['$parse', function ($parse) {
    return {
        restrict: 'A',
        link: function (scope, element, attrs) {
            var model = $parse(attrs.fileModel);
            var modelSetter = model.assign;

            element.bind('change', function () {
                scope.$apply(function () {
                    modelSetter(scope, element[0].files[0]);
                });
            });
        }
    };
}])
    
.directive('pwCheck', [function () {
    return {
      require: 'ngModel',
      link: function (scope, elem, attrs, ctrl) {
        var firstPassword = '#' + attrs.pwCheck;
        elem.add(firstPassword).on('keyup', function () {
          scope.$apply(function () {
            var v = elem.val()===$(firstPassword).val();
            ctrl.$setValidity('pwmatch', v);
          });
        });
      }
    }
  }])
  
;


