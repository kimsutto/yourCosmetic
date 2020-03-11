<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
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

<div class="preloader">
	<div class="sk-spinner sk-spinner-pulse"></div>
</div>

<div class="nav-container">
   <nav class="nav-inner transparent">

      <div class="navbar">
         <div class="container">
            <div class="row">

              <div class="brand">
                <a href="index.jsp">Your Cosmetic</a>
              </div>

              <div class="navicon">
                <div class="menu-container">

                  <div class="circle dark inline">
                    <i class="icon ion-navicon"></i>
                  </div>

                  <div class="list-menu">
                    <i class="icon ion-close-round close-iframe"></i>
                    <div class="intro-inner">
                      <ul id="nav-menu">
                        <li><a href="index.jsp">Home</a></li>
                        <%
							String userID = (String)session.getAttribute("userID");
							String userPW = (String)session.getAttribute("userPW");
							if (userID == null && userPW == null) {
						%>
                        
                        <li><a href="LoginViewAction.do">Login</a></li>
                        
                        <%	
						}else{
						%>
                             
                        <li><a href="LogoutAction.do">Logout</a></li>
                        
                        <%	
						}
						%>
						<li><a href="EventViewAction.do">Event</a></li>
						<li><a href="ReviewBoardViewAction.do">ReviewBoard</a></li>
						
						<c:choose>
       					 <c:when test="${FastSearch != null}">
     					   
    					     <li><a href="FastSearchAction.do?type=1">Skin</a></li>
     					     <li><a href="FastSearchAction.do?type=2">Mask</a></li>
     					     <li><a href="FastSearchAction.do?type=3">BB</a></li>
     					     <li><a href="FastSearchAction.do?type=4">Base</a></li>
     					     <li><a href="FastSearchAction.do?type=5">Foundation</a></li>
    					      <li><a href="FastSearchAction.do?type=6">Cushion</a></li>
    					      <li><a href="FastSearchAction.do?type=7">Powder</a></li>
    					      <li><a href="FastSearchAction.do?type=8">Concealer</a></li>
    					      <li><a href="FastSearchAction.do?type=9">Cleansing</a></li>
     					   
    					    </c:when>
        
     					   <c:otherwise>
     					   
     					     <li><a href="OptionViewAction.do?type=1">Skin</a></li>
     					     <li><a href="OptionViewAction.do?type=2">Mask</a></li>
    					      <li><a href="OptionViewAction.do?type=3">BB</a></li>
    					      <li><a href="OptionViewAction.do?type=4">Base</a></li>
     					     <li><a href="OptionViewAction.do?type=5">Foundation</a></li>
     					     <li><a href="OptionViewAction.do?type=6">Cushion</a></li>
     					     <li><a href="OptionViewAction.do?type=7">Powder</a></li>
     					     <li><a href="OptionViewAction.do?type=8">Concealer</a></li>
      					    <li><a href="OptionViewAction.do?type=9">Cleansing</a></li>
     					   
							</c:otherwise>
							</c:choose>
                      </ul>
                    </div>
                  </div>

                </div>
              </div>

            </div>
         </div>
      </div>

   </nav>
</div>

</body>
</html>