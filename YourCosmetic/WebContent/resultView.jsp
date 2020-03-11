<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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
<section id="header" class="header-six">
	<div class="container2">
		<div class="row">
		
		
		<div class="col-md-offset-3 col-md-6 col-sm-offset-2 col-sm-8" >
          <div class="header-thumb2" >

		<table class="table table-boardered">
		<tr>		
					<th></th>
					<td><h1>선택 정보&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;</h1></td>	
			</tr>	
			<tr>
		
			<tr>
				<td><h4><p>피부 타입</p></h4></td>
				<td>
				<c:choose>
				<c:when test="${skinType == null}">
				<h4><p>없음</p></h4>
				</c:when>
				<c:otherwise>
				<c:if test="${user.isDry_skin()}">
				<h4><p>건성</p></h4>
				</c:if>
				<c:if test="${user.isOil()}">
				<h4><p>지성</p></h4>
				</c:if>
				<c:if test="${user.isComplex()}">
				<h4><p>복합성</p></h4>
				</c:if>
				<c:if test="${user.isNeutral()}">
				<h4><p>중성</p></h4>
				</c:if>
				</c:otherwise>
				</c:choose>
				</td>
			</tr>
			
			<tr>
				<td><h4><p>피부 톤</p></h4></td>
				<td><h4><p>
				<c:choose>
				<c:when test="${skinTone == null}">
				없음
				</c:when>
				<c:otherwise>
				<c:if test="${user.isBright()}">
				밝은톤
				</c:if>
				<c:if test="${user.isMiddle()}">
				중간톤
				</c:if>
				<c:if test="${user.isDark()}">
				어두운톤
				</c:if>
				</c:otherwise>
				</c:choose>
				</p></h4>
				</td>
			</tr>
			
			<tr>
				<td><h4><p>피부 고민</p></h4></td>
				<td><h4><p>
				<c:choose>
				<c:when test="${problem == null}">
				없음
				</c:when>
				<c:otherwise>
				<c:if test="${user.isDry()}">
				건조     
				</c:if>
				<c:if test="${user.isSensitive()}">
				민감     
				</c:if>
				<c:if test="${user.isAcne()}">
				여드름     
				</c:if>
				<c:if test="${user.isWrinkle()}">
				주름/탄력     
				</c:if>
				<c:if test="${user.isWhitening()}">
				미백     
				</c:if>
				<c:if test="${user.isBlack_head()}">
				블랙헤드/피지     
				</c:if>
				</c:otherwise>
				</c:choose>
				</p></h4>		
				</td>
			</tr>
			
			<tr>
				<td><h4><p>선호 톤</p></h4></td>
				<td><h4><p>
				<c:choose>
				<c:when test="${tone == null}">
				없음
				</c:when>
				<c:otherwise>
				<c:if test="${user.isCool()}">
				쿨톤
				</c:if>
				<c:if test="${user.isWarm()}">
				웜톤
				</c:if>
				</c:otherwise>
				</c:choose>
				</p></h4>
				</td>
			</tr>
			
			<tr>
				<td><h4><p>선호 재질</p></h4></td>
				<td><h4><p>
				<c:choose>
				<c:when test="${material == null}">
				없음
				</c:when>
				<c:otherwise>
				<c:if test="${user.isMatte()}">
				매트
				</c:if>
				<c:if test="${user.isGlossy()}">
				글로시
				</c:if>
				</c:otherwise>
				</c:choose>
				</p></h4>
				</td>
			</tr>
			
			<tr>
				<td><h4><p>유해 성분 필터</p></h4></td>
				<td><h4><p>
				<c:choose>
				<c:when test="${toxic == null}">
				해제
				</c:when>
				<c:otherwise>
				적용
				</c:otherwise>
				</c:choose>
				</p></h4>
				</td>
			</tr>
			<tr><td colspan="2">
			<a href="OptionViewAction.do?type=${ type }" class="btn btn-warning">
			<c:choose>
			<c:when test="${FastSearch == null}">
			돌아가기
			</c:when>
			<c:otherwise>
			다른 옵션으로 검색하기
			</c:otherwise>
			</c:choose>
		
			</a>
			</td>
			</tr>
		</table>
		</div>
		
		
		
		
		
		
	</div>
	</div>
	</div>
 	
 </section>	
 	
<section id="portfolio">
   <div class="container">
      <div class="row">
	
	<div class="col-md-12 col-sm-12">
	
	<div class="iso-box-section wow fadeInUp" data-wow-delay="1s">
      <div class="iso-box-wrapper col4-iso-box">
		
		<c:forEach var="c" items="${viewList}">
			
		<div class="iso-box Skin col-md-4 col-sm-6">
          <div class="portfolio-thumb">
           <img src="./product/${c.getNo()}.png" class="img-responsive" alt="Portfolio">
            <div class="portfolio-overlay">
              <div class="portfolio-item">
           		 <a href="ProductDetailViewAction.do?no=${c.getNo()}"><i class="fa fa-link"></i></a>
					<h2>${c.getName()}</h2>
					<h2>${c.getManufacturer()}</h2>
					<h2>${c.getPrice() }</h2>
                
                  </div>
              
               </div>
        
           </div>
         </div>
	
					
	</c:forEach>
		
	</div>
</div>
</div>
</div>
</div>
</section>
	
</body>
</html>