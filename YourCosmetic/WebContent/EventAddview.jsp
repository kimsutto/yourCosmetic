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
              <h1 class="wow fadeIn" data-wow-delay="1.6s">이벤트 추가</h1>
              
              
<form action="EventAddAction.do" method="post">    

    <p>이벤트 회사: <input type="text" name="company">
    <p>시작일: <input type="date" name="startDate" 
                     min="2018-07-01" max="2020-04-15" 
                     placeholder="2019-01-01">
    <p>종료일: <input type="date" name="endDate" 
                     min="2018-07-01" max="2020-04-15" 
                     placeholder="2019-01-01">        
 	<p>이벤트 주소 : <input type="text" name="url">
    <p><input type="submit" value="Add">
       <input type="reset" value="다시쓰기">
</form>
              
              
               </div>
			</div>

		</div>
	</div>		
</section>

<section id="blog">
   <div class="container">
     
		</div>
</section>


</body>
</html>

