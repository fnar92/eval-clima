(function () { 
    'use strict';
        
    angular
        .module('app')
        .constant('Constants', {
            
            //dev
            BaseURLBack : 'http://fnar.com:8087/eval-clima/api',
            BaseURLFront : 'http://fnar.com:8087/eval-clima/#/'
            
            /*
            //prod
            BaseURLBack : 'http://www.hrwise.com.mx/eval-clima/api',
            BaseURLFront : 'http://www.hrwise.com.mx/eval-clima/#/'
            */
        });
        
})();
