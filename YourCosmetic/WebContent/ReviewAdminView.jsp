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
              <h1 class="wow fadeIn" data-wow-delay="1.6s">Review Edit Page</h1>
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
    	<td>
    	<form name ="search" method="Post" action = "SearchWordAction.do">
		<input type = "text" name ="word">
		<button type = "submit"> 검색  </button>
		</form>
    	</td>
    
    </tr>
    
	<tr>
		<td>리뷰 번호</td>
		<td>화장품 이름</td>
		<td>내용</td>
		<td>작성자 아이디</td>
		<td>작성자 피부타입</td>
		<td></td>
		<td></td>
	</tr>

			<c:forEach var="r" items="${rList}">
				<tr>
					<td> ${r.getBno()} </td>
					<td> ${r.getName()} </td>
					<td> ${r.getContext()} </td>
					<td> ${r.getId()} </td>
					<td> ${r.getType() }
					</td>
					<td>
					<p><a href="DeleteReviewAction.do?Bno=${r.getBno()}" onclick="deleteConfirm('${r.getBno()}')" class="btn btn-secondary" role="button"> Delete &raquo;</a>
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