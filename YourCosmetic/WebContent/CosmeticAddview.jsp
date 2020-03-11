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
              <h1 class="wow fadeIn" data-wow-delay="1.6s">화장품 추가</h1>
              
              
<form action="CosmeticAddAction.do" method="post" enctype="multipart/form-data">    
	<p>이미지 첨부: <input type ="file" name="imagefile">
    <p>화장품 종류: <input type="text" name="type">
    <p>화장품 이름 : <input type="text" name="name">
    <p>제조사 : <input type = "text" name = "manufacturer">
    <p>화장품 가격 :  <input type = "text" name = "price">
    <p>피부타입: <input type="radio" name="skinType" value="oil">  지성  &nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="skinType" value="dry_skin">  건성 &nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="skinType" value="complex">  복합성 &nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="skinType" value="neutral">  중성 &nbsp;&nbsp;
					
    <p>피부톤: <input type="radio" name="skinTone" value="bright"> &nbsp;&nbsp; 밝은톤
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="skinTone" value="middle"> &nbsp;&nbsp; 중간톤
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="skinTone" value="dark"> &nbsp;&nbsp; 어두운톤
					
    <p>피부고민: <input type="checkbox" name="problem" value="dry"> &nbsp;&nbsp; 건조
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="problem" value="sensitive"> &nbsp;&nbsp; 민감
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="problem" value="acne"> &nbsp;&nbsp; 여드름
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="problem" value="wrinkle"> &nbsp;&nbsp; 주름/탄력
					<br>
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="problem" value="whitening"> &nbsp;&nbsp; 미백
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="problem" value="black_head"> &nbsp;&nbsp; 블랙헤드/피지
					
    <p>선호톤: <input type="radio" name="tone" value="cool"> &nbsp;&nbsp; 쿨톤
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="tone" value="warm"> &nbsp;&nbsp; 웜톤
    <p>선호재질:<input type="radio" name="material" value="matte"> &nbsp;&nbsp; 매트
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="material" value="glossy"> &nbsp;&nbsp; 글로시
 	<p>유해성분 필터 : <input type="checkbox" name="toxic" value="check">&nbsp;&nbsp;켜기
 	<p>유해 성분 :   <textarea class="form-control" id="toxicStr" rows="2" ></textarea>
 	
 	<p>성분 :  <textarea class="form-control" id="ingredient" rows="5" ></textarea>
 	<p>화장품 판매 페이지 : <input type = text" name="url">
 	
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



</body>
</html>