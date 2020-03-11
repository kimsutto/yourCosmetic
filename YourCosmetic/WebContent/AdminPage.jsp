<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="">
	<meta name="description" content="">

	<title>Your Cosmetic Homepage</title>

	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/animate.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/ionicons.min.css">
	<link rel="stylesheet" href="css/style.css">
  	<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700,300' rel='stylesheet' type='text/css'>
	
	
</head>
<body>

<div class="nav-container">
   <nav class="nav-inner transparent">

      <div class="navbar">
         <div class="container">
            <div class="row">

              <div class="brand">
                <a href="index.jsp">Your Cosmetic</a>
              </div>
            </div>
         </div>
      </div>

   </nav>
</div>

<section id="header" class="header-one">
	<div class="container">
		<div class="row">

			<div class="col-md-offset-3 col-md-6 col-sm-offset-2 col-sm-8">
          <div class="header-thumb">
              <h1 class="wow fadeIn" data-wow-delay="1.0s">Admin Page</h1>
               </div>
			</div>

		</div>
	</div>		
</section>

<section id="blog">
   <div class="container">
      <div class="row">

<c:set var="id" value= "${sessionScope.userID}"/>

<c:choose>		
	<c:when test="${id eq 'admin'}">
	
		
         <div class="wow fadeInUp col-md-6 col-sm-6" data-wow-delay="1s">
         	  <div class="blog-thumb">
         		   
         		   <h1>Cosmetic Edit</h1>
         		     
         		     <a class="btn btn-default" onClick="location.href='CosmeticAdminViewAction.do'">Go</a>
         	    </div>
		    </div>
		    <div class="wow fadeInUp col-md-6 col-sm-6" data-wow-delay="1s">
         	  <div class="blog-thumb">
         		  <h1>Member Edit</h1>
         		     <a class="btn btn-default" onClick="location.href='MemberAdminViewAction.do'">Go</a>
         	    </div>
		    </div>
		    <div class="wow fadeInUp col-md-6 col-sm-6" data-wow-delay="1s">
         	  <div class="blog-thumb">
         		  <h1>Event Edit</h1>		       
         		     <a class="btn btn-default" onClick="location.href='EventAdminViewAction.do'">Go</a>
         	    </div>
		    </div>
  
		      <div class="wow fadeInUp col-md-6 col-sm-6" data-wow-delay="1s">
         	  <div class="blog-thumb">
         		  <h1>Review Edit</h1>
    		     <a class="btn btn-default" onClick="location.href='ReviewAdminViewAction.do'">Go</a>
         	    </div>
		    </div>
		    
	</c:when>
		  	
	<c:otherwise>
	  				<jsp:forward page="adminloginView.jsp"></jsp:forward>	    
	</c:otherwise>
			
</c:choose>
	

		</div>
		</div>
</section>


</body>
</html>

