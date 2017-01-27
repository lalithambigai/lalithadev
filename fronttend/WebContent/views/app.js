var app=angular.module("register",['ngRoute']); 

app.controller('controller',function($scope,$http,$route,$location,$window)
		
		{
var url="http://"+$window.location.host+"/chattapp";
        
         alert("welcome to login");

	           $scope.loginn=function()
	{
         alert("log bef post");
	           
               $http.post(url+'/login/'+$scope.username+'/'+$scope.password).success(function(data)
	{
	console.log("This is inside loginn function");
       
	     alert("log aft post");
	     
	     
	    
	   {
		   
		   $window.location.href = "http://localhost:8081/fronttend/index.html";
	   }
       
         console.log(data);
	      	
      }).error(function()
	{
			   $window.alert("wrong username and password");
	});
	}
	
	           
	           
	           $scope.registerr=function()
	{
     alert("before post");
	            $http.post(url+'/register/'+$scope.username+'/'+$scope.email+'/'+$scope.password+'/'+$scope.mobileno).success(function(data)
	{
     alert("after post");
                $location.path('/login');
                $scope.login=function()
    {
	            $log.log(data);
    }			
	})
	}
	});
	  

          app.config(function($routeProvider){
		  $routeProvider.when("/login",{templateUrl: "login.html"})
		  $routeProvider.when("/register",{templateUrl:"register.html"})
		  $routeProvider.when("/index",{templateUrl: "index.html"});
	});

		
	    
	
	
	
		

	


	
	
	
		