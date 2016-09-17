var scotchApp = angular.module('scotchApp', [ 'ngRoute' ]);

scotchApp.config(function($routeProvider, $locationProvider) {

	//$locationProvider.html5Mode(true).hashPrefix('');
	
	$routeProvider
	.when('/', {
		templateUrl : 'search.html',
		controller : 'searchController'
	})

	.when('/insert', {
		templateUrl : 'insert.html',
		controller : 'insertController'
	})
	.otherwise({
        redirectTo: '/'
    });
	
});