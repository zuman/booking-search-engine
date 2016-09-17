scotchApp.controller('insertController', function($scope, $rootScope, $http) {

	$scope.insertData = function() {
		$http({
			url : "logic/insertRow.php",
			method : "POST",
			data : {
				'city' : $scope.insert.city,
				'passion' : $scope.insert.passion,
				'endorsement' : $scope.insert.endorsement
			},
			headers : {
				'Content-Type' : 'application/x-www-form-urlencoded'
			}
		}).success(function(response) {
			log(response);
		}).error(function(data, status) {
			log(status);
		});
	}

	$scope.getCount = function() {
		$http({
			url : "logic/getCount.php",
			method : "POST",
			data : {
				'city' : $scope.insert.city,
				'passion' : $scope.insert.passion,
			},
			headers : {
				'Content-Type' : 'application/x-www-form-urlencoded'
			}
		}).success(function(response) {
			$scope.insert.endorsement = parseInt(response);
			log(response + " endorsements available");
		}).error(function(data, status) {
			log(status);
		});
	}

	function log(message) {
		$rootScope.console = getLogDate() + message + "*****************"
				+ $rootScope.console;
	}

	function getLogDate() {
		var d = new Date();
		return ("[" + d.getFullYear() + "/" + (d.getMonth() + 1) + "/"
				+ d.getDate() + " " + d.getHours() + ":" + d.getMinutes() + ":"
				+ d.getSeconds() + ":" + d.getMilliseconds() + "]:. ");
	}

	$scope.clear = function() {
		$rootScope.console = "";
	}
	$scope.reset = function() {
		$scope.insert.city = "";
		$scope.insert.passion = "";
		$scope.insert.endorsement = "";
	}

});

//SearchController
scotchApp.controller('searchController', function($scope, $rootScope, $http) {
	

    $scope.$watch('search', function (newValue, oldValue) {
        console.log('newValue=' + newValue);
        if(newValue!=undefined && newValue!="")	searchData();
    });

	function searchData() {
		$http({
			url : "logic/search.php",
			method : "POST",
			data : {
				'search' : $scope.search
			},
			headers : {
				'Content-Type' : 'application/x-www-form-urlencoded'
			}
		}).success(function(response) {
			console.log(response);
			$scope.result=response;
			log($scope.search+": "+response);
		}).error(function(data, status) {
			log(status);
		});
	}

	function log(message) {
		$rootScope.console = getLogDate() + message + " *********************************************************"
				+ $rootScope.console;
	}

	function getLogDate() {
		var d = new Date();
		return ("[" + d.getFullYear() + "/" + (d.getMonth() + 1) + "/"
				+ d.getDate() + " " + d.getHours() + ":" + d.getMinutes() + ":"
				+ d.getSeconds() + ":" + d.getMilliseconds() + "]:. ");
	}

	$scope.clear = function() {
		$rootScope.console = "";
	}

});