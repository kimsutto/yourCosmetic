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
              <h1 class="wow fadeIn" data-wow-delay="1.6s">Event Edit Page</h1>
               </div>
			</div>

		</div>
	</div>		
</section>



<section id="blog">
   <div class="container">
      <div class="row">
          	  <p><a href="EventAddview.jsp" class="btn btn-secondary" role="button"> Add Event &raquo;</a></p>

         	<table class="table table-hover">
	<tr>
		<td>이벤트 번호</td>
		<td>회사</td>
		<td>시작일</td>
		<td>종료일</td>
		<td>주소</td>
		<td></td>
	</tr>

			<c:forEach var="e" items="${eList}">
				<tr>
					<td> ${e.getEno()} </td>
					<td> ${e.getCompany()} </td>
					<td> ${e.getStartDate()} </td>
					<td> ${e.getEndDate()} </td>
					<td>
					</td>
					<td>
					<p><a href="DeleteEventAction.do?Eno=${e.getEno()}" onclick="deleteConfirm('${e.getEno()}')" class="btn btn-secondary" role="button"> Delete &raquo;</a>
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