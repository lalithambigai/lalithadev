var app=angular.module("register",[]); 
app.controller('controller',function($scope,$http,$location,$window)
		{
	//$scope.udata=
	
	var url="http://"+$window.location.host+"/chattapp";
	alert("welcome");
	
	$scope.registerr=function()
	{
    alert("before post");
	$http.post(url+'/register/'+$scope.username+'/'+$scope.email+'/'+$scope.password+'/'+$scope.mobileno).success(function(data)
	{
    alert("after post");
    $scope.login=function()
    {
	$log.log(data);
    }			
	});
	}
	
})
				

	


	
	
	
		