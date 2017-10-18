(function () { 
    'use strict';
	
    angular
        .module('app')
        .run(run);
    
    function run ($rootScope, $location, $localStorage, UserService, AuthenticationService) {   
        $rootScope.isAuth=false;
        $rootScope.tipoUsuario=0;
        $rootScope.user={};
        if(AuthenticationService.isAuth()){
            UserService.loadUser();
            $rootScope.tipoUsuario=$localStorage.globals.type;
        }
        $rootScope.$on('$locationChangeStart', function (event, next, current) {
            if($location.path() !== '/login' && !AuthenticationService.isAuth()){
                $location.path('/login');
            }
        });
		
			
    }

})();