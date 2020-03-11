<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="ko">

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
	
<script src="https://maps.googleapis.com/maps-api-v3/api/js/37/4/intl/ko_ALL/common.js" type="text/javascript" charset="UTF-8"></script>
<script src="https://maps.googleapis.com/maps-api-v3/api/js/37/4/intl/ko_ALL/util.js" type="text/javascript" charset="UTF-8"></script>
<link rel="stylesheet" href="resource/css/default.css">
<link rel="stylesheet" href="resource/css/style.css">
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>


<section id="single-project">
   <div class="container">
      <div class="row">

         <div class="wow fadeInUp col-md-offset-1 col-md-3 col-sm-offset-1 col-sm-4 animated" style="visibility: visible; animation-name: fadeInUp; animation-delay: 0.5s;" data-wow-delay="0.5s">
			<div class="project-info">
				<h1>${product.getName()}</h1>
				</div>
			<div class="project-info">
				<h4>판매가</h4>
				<hp>${product.getPrice()}<p></p>
			</hp></div>
			<div class="project-info">
				<h4>공급사</h4>
				<p>${product.getManufacturer()}</p>
			</div>
			<div class="project-info">
				<h4>유해성분</h4>
				<p style="color:red">${product.getToxicStr()}</p>
			</div>
			</br>
			</br>

			
			<div class="btns">
				<a href="${product.getUrl()}" class="btn1">구매하러가기 </a> 
			</div>
			</div>

		<div class="wow fadeInUp col-md-7 col-sm-7 animated" style="visibility: visible; animation-name: fadeInUp; animation-delay: 0.5s;" data-wow-delay="0.5s">
			<img class="img-responsive" alt="Single Project" src="./product/${product.getNo()}.png">
			
			 <div class="blog-comment">
				<div class="project-info">
					<h4>성분</h4>
					<p>${product.getIngredient()}</p>
				</div>
				
				<br>
				<br>
				

			 
                 <h3>Review</h3>
                 <c:forEach var="b" items="${boList}">
                    <div class="media">
                      <div class="media-body">
                    
                    <h4 class="media-heading">${b.getId()} </h4>	
                        <h10>${b.getType() }</h10>
                        <p>${b.getContext()}</p>
                 
                      </div>
                    </div>
                 	</c:forEach>  
               </div>
               
				<br>
				<br>
				
				
				<c:set var="id" value= "${sessionScope.userID}"/>
				<c:if test= "${id ne null }">
					    <h3>Write Review</h3>
                    <form action="ReviewWriteAction.do?dno=${product.getNo()}" method="post">
                    <input type="hidden" name="userID" value="${sessionScope.userID}">
                  	 피부 타입 :  <select name="type" size=1>
    							<option value="건성">건성</option>
    							<option value="복합성">복합성</option>
    							<option value="지성">지성</option>
          					   </select>
                      <textarea class="form-control" name="comment" placeholder="500자 이내" rows="5"></textarea>
                      <div class="contact-submit">
                      	<input name="submit" class="form-control" id="submit" type="submit" value="작성하기">
                      </div>
                   </form>
                   
                   </c:if>
		</div>

      </div>
   </div>
</section>


<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/custom.js"></script>


<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false&amp;callback=initialize" type="text/javascript"></script></body></html>