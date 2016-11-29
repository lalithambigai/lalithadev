<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">
  <head>
 <%--   <%@ include file="/WEB-INF/views/Header.jsp" %> --%> 
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>website</title>

    <!-- Bootstrap -->
    
   
    <link href="<c:url value='/resources/css/jquery.fancybox.css'/>" rel="stylesheet">
	<link rel="stylesheet" href="<c:url value='/resources/assets/css/bootstrap.css'/>"/>
	<link rel="stylesheet" href="<c:url value='/resources/assets/css/bootstrap-theme.css'/>">
	<link rel="stylesheet" href="<c:url value='/resources/assets/css/slippry.css'/>">
	<link href="<c:url value='/resources/assets/color/default.css'/>" rel="stylesheet"> 
	<link href="<c:url value='/resources/assets/css/style.css'/>" rel="stylesheet" />	
    <script src="<c:url value='/resources/assets/js/modernizr.custom.js'/>" ></script>
    
    <style>
 body
{
background-image: url("<c:url value='/resources/image/bg1.jpg'/>"); 
  background-repeat: no-repeat; 
background-size:cover; 
}
    </style>
    </head>
<body>
<header>

<div id="navigation" class="navbar navbar-inverse navbar-fixed-top default" role="navigation">
  <div class="container">

    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index.html">Fashionista</a>
    </div>
	<div class="navigation">
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"><nav>
      <ul class="nav navbar-nav navbar-right">
        <li class="current"><a href="index">Home</a></li>
		<li><a href="aboutus">ABOUTUS</a></li>
		<li><a href="check">SIGNUP</a></li>
		<li><a href="LOGIN">LOGIN</a></li>
		 <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">CATEGORY <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <c:forEach items="${lali}" var="category"> 
          <li><a commandName="prod" href="categorypage?id=${category.cid}">${category.catname}</a></li>
          </c:forEach>
      </ul> 
      </li>   
		<!--  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="category">CATEGORIES<span class="caret"></span></a>
          <li><a href="categories">LIPSTICK</a></li>
          <li><a href="categories">MASKARA</a></li>
          <li><a href="categories">NAILPOLISH</a></li>
        </ul>
      </li>
		 -->
		
		<li><a href="ADMIN">ADMIN</a></li>
      </ul></nav>
    </div>
	</div>

  </div>
</div>

</header><br><br><br><br><br>
<!-- section intro -->
<section id="intro">
			<ul id="slippry-slider">
			  
			  
			   
				<li>
				<a href="#slide"><img src="<c:url value='/resources/assets/img/slide/c6.jpg'/>" alt="Welcome to fashion world!">
				</a>
				</li>
				<li>
				<a href="#slide"><img src="<c:url value='/resources/assets/img/slide/c10.jpg'/>">
				</a>
				</li>
				<li>
				<a href="#slide"><img src="<c:url value='/resources/assets/img/slide/uu.jpg'/>">
				</a>
				</li>
				 
				
				
				
				
				
				
			<%--  	<img src="<c:url value='/resources/assets/img/c6.jpg'/>" class="img-thumbnails" width="954" height="536">
               </li>
               <li>
				<img src="<c:url value='/resources/assets/img/c10.jpg'/>" class="img-thumbnails" width="954" height="536">
			  </li> 
			  <li> 
				<img src="<c:url value='/resources/assets/img/uu.jpg'/>" class="img-thumbnails" width="954" height="536">
			 
			</li> --%></ul>
</section>

 <!-- Section about -->
<section id="about" class="section">
<div class="container">
	<div class="row">
		<div class="col-md-8 col-md-offset-2">
			<div class="heading">
				<h3><span>About us</span></h3>
			</div>
			<div class="sub-heading">
				<p>
					
				</p>
			</div>
		</div>
	</div>
	
	
	<video width="400" controls>
  <source src="mov_bbb.mp4" type="video/mp4">
  <source src="mov_bbb.ogg" type="video/ogg">
  Your browser does not support HTML5 video.
</video>

<p>
Video courtesy of
<a href="http://www.bigbuckbunny.org/" target="_blank">Big Buck Bunny</a>.
</p>
	
	<div class="row">
		<div class="col-md-3">
			<div class="team-box">
			<img src="resources/assets/image/Lash Perfection _ Makeup Artist Secrets from Lancôme.mp4" alt="" class="img-responsive" />
			<div class="roles">
				<h5><strong></strong></h5>
				<p>
				
				</p>
				<ul class="social-profile">
					<li><a href="#"><i class=""></i></a></li>
					<li><a href="#"><i class=""></i></a></li>
					<li><a href="#"><i class=""></i></a></li>
				</ul>
			</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="team-box">
			<img src="resources/assets/img/dummies/ab3.jpg" alt="" class="img-responsive" />
			<div class="roles">
				<h5><strong></strong></h5>
				<p>
					
				</p>
				<ul class="social-profile">
					<li><a href="#"><i class=""></i></a></li>
					<li><a href="#"><i class=""></i></a></li>
					<li><a href="#"><i class=""></i></a></li>
				</ul>
			</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="team-box">
			<img src="resources/assets/img/dummies/ab6.jpg" alt="" class="img-responsive" />
			<div class="roles">
				<h5><strong></strong></h5>
				<p>
					
				</p>
				<ul class="social-profile">
					<li><a href="#"><i class=""></i></a></li>
					<li><a href="#"><i class=""></i></a></li>
					<li><a href="#"><i class=""></i></a></li>
				</ul>
			</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="team-box">
			<img src="resources/assets/img/dummies/ab2.jpg" alt="" class="img-responsive" />
			<div class="roles">
				<h5><strong></strong></h5>
				<p>
					
				</p>
				<ul class="social-profile">
					<li><a href="#"><i class=""></i></a></li>
					<li><a href="#"><i class=""></i></a></li>
					<li><a href="#"><i class=""></i></a></li>
				</ul>
			</div>
			</div>
		</div>
	</div>
</div>
</section>

<footer>
<div class="verybottom">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="aligncenter">
                <ul class="social-network social-circle">
                    <li><a href="#" class="icoRss" title="Rss"><i class="fa fa-rss"></i></a></li>
                    <li><a href="#" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                    <li><a href="#" class="icoTwitter" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                    <li><a href="#" class="icoGoogle" title="Google +"><i class="fa fa-google-plus"></i></a></li>
                    <li><a href="#" class="icoLinkedin" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
                </ul>	
				</div>				
			</div>
		</div>
		
</footer>
<a href="#" class="scrollup"><i class="fa fa-angle-up fa-2x"></i></a>
<!-- javascript -->
<script src="resources/assets/js/jquery-1.9.1.min.js"></script>
<script src="resources/assets/js/jquery.easing.js"></script>
<script src="resources/assets/js/classie.js"></script>
<script src="resources/assets/js/bootstrap.js"></script>
<script src="resources/assets/js/slippry.min.js"></script>
<script src="resources/assets/js/nagging-menu.js"></script>
<script src="resources/assets/js/jquery.nav.js"></script>
<script src="resources/assets/js/jquery.scrollTo.js"></script>
<script src="resources/assets/js/jquery.fancybox.pack.js"></script> 
<script src="resources/assets/js/jquery.fancybox-media.js"></script> 
<script src="resources/assets/js/masonry.pkgd.min.js"></script>
<script src="resources/assets/js/imagesloaded.js"></script>
<script src="resources/assets/js/jquery.nicescroll.min.js"></script>
<script src="https://maps.google.com/maps/api/js?sensor=true"></script>
<script src="resources/assets/js/AnimOnScroll.js"></script>
    <script>
        new AnimOnScroll( document.getElementById( 'grid' ), {
            minDuration : 0.4,
            maxDuration : 0.7,
            viewportFactor : 0.2
        } );
    </script>
<script>
	$(document).ready(function(){
	  $('#slippry-slider').slippry(
		defaults = {
			transition: 'vertical',
			useCSS: true,
			speed: 5000,
			pause: 3000,
			initSingle: false,
			auto: true,
			preload: 'visible',
			pager: false,		
		} 
	  
	  )
	});
</script>
<!-- <script src="resources/assets/js/custom.js"></script>
 --><!-- <script src="resources/contactform/contactform.js"></script>
 -->
</body>
</html>