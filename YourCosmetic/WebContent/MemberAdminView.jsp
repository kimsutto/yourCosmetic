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
              <h1 class="wow fadeIn" data-wow-delay="1.6s">Member Edit Page</h1>
               </div>
			</div>

		</div>
	</div>		
</section>



<section id="blog">
   <div class="container">
      <div class="row">
	</p>

         	<table class="table table-hover">
	<tr>
		<td>회원 번호</td>
		<td>이름</td>
		<td>ID</td>
		<td>password</td>
		<td></td>
		<td></td>
		<td></td>
	</tr>

			<c:forEach var="m" items="${mList}">
				<tr>
					<td> ${m.getUno()} </td>
					<td> ${m.getName()} </td>
					<td> ${m.getId()} </td>
					<td> ${m.getPassword()} </td>
					<td>
					
					</td>
					<td>
					<p><a href="DeleteMemberAction.do?Uno=${m.getUno()}" onclick="deleteConfirm('${m.getUno()}')" class="btn btn-secondary" role="button"> Delete &raquo;</a>
					</p>
					</td>
					<td>
					</td>
				</tr>
			</c:forEach>
		</table>
		</div>
		</div>
</section>
</body>
</html>