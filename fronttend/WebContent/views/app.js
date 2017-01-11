var app=angular.module("register",[]); 
app.controller('controller',function($scope,$http,$location,$window)
		{
	
	var url="http://"+$window.location.host+"/chattapp";
	alert("welcome");
	
	$scope.register=function()
	{
    alert("before post");
	$http.post(url+'/register/'+$scope.username).success(function(data)
	{
	System.out.println("lalitha");
    alert("after post");
	$log.log(data);
				
	});
	}
	
})
				

	
	


	
	
	
		