(function () { 
    'use strict';
	
    angular
	.module('app.authentication')
	.controller('MainController', MainController);
    
    function MainController ($rootScope, $location, $state, $mdToast, $mdDialog, UserService, RestService, AuthenticationService, Constants) {
        /* jshint validthis: true */
        console.log('init main');
        var scope=this;
        scope.version=1;
    };

})();