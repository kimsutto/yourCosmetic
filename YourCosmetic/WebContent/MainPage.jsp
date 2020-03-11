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
<jsp:include page="header.jsp"></jsp:include>

<section id="header" class="header-one">
	<div class="container">
		<div class="row">

			<div class="col-md-offset-3 col-md-6 col-sm-offset-2 col-sm-8">
          <div class="header-thumb">
              <h1 class="wow fadeIn" data-wow-delay="1.6s">Look For Your Cosmetic</h1>
              <h3 class="wow fadeInUp" data-wow-delay="1.9s">Custom Search Services</h3>
          </div>
			</div>

		</div>
	</div>		
</section>


<section id="portfolio">
   <div class="container">
      <div class="row">

         <div class="col-md-12 col-sm-12">
            
               <!-- iso section -->
               <div class="iso-section wow fadeInUp" data-wow-delay="1.5s">

                  <ul class="filter-wrapper clearfix">
                  <li><a href="#" data-filter="*" class="selected opc-main-bg">All</a></li>
                  <li><a href="#" class="opc-main-bg" data-filter=".Skin">Skin</a></li>
                  <li><a href="#" class="opc-main-bg" data-filter=".Mask">Mask</a></li>
                  <li><a href="#" class="opc-main-bg" data-filter=".BB">BB</a></li>
                  <li><a href="#" class="opc-main-bg" data-filter=".Base">Base</a></li>
                  <li><a href="#" class="opc-main-bg" data-filter=".Foundation">Foundation</a></li>
                  <li><a href="#" class="opc-main-bg" data-filter=".Cushion">Cushion</a></li>
                  <li><a href="#" class="opc-main-bg" data-filter=".Powder">Powder</a></li>
                  <li><a href="#" class="opc-main-bg" data-filter=".Concealer">Concealer</a></li>
                  <li><a href="#" class="opc-main-bg" data-filter=".Cleansing">Cleansing</a></li>
                        </ul>

                        <!-- iso box section -->
                        <div class="iso-box-section wow fadeInUp" data-wow-delay="1s">
                           <div class="iso-box-wrapper col4-iso-box">
							
						<c:forEach var="cc" items="${cList}">                       
                              <c:choose>
                              <c:when test="${cc.getType() == 1}">
                              <div class="iso-box Skin col-md-4 col-sm-6">
                              <div class="portfolio-thumb">
                                    <img src="./product/${cc.getNo()}.png" class="img-responsive" alt="Portfolio">
                                       <div class="portfolio-overlay">
                                          <div class="portfolio-item">
                                                <a href="ProductDetailViewAction.do?no=${cc.getNo()}"><i class="fa fa-link"></i></a>
                                                <h2>${cc.getName()}</h2>
                                             </div>
                                       </div>
                                 </div>
                              </div>
                              </c:when>
                              <c:when test="${cc.getType() == 2}">
                              <div class="iso-box Mask col-md-4 col-sm-6">
                              <div class="portfolio-thumb">
                                    <img src="./product/${cc.getNo()}.png" class="img-responsive" alt="Portfolio">
                                       <div class="portfolio-overlay">
                                          <div class="portfolio-item">
                                                <a href="ProductDetailViewAction.do?no=${cc.getNo()}"><i class="fa fa-link"></i></a>
                                                <h2>${cc.getName()}</h2>
                                             </div>
                                       </div>
                                 </div>
                              </div>
                              </c:when>
                              <c:when test="${cc.getType() == 3}">
                              <div class="iso-box BB col-md-4 col-sm-6">
                              <div class="portfolio-thumb">
                                    <img src="./product/${cc.getNo()}.png" class="img-responsive" alt="Portfolio">
                                       <div class="portfolio-overlay">
                                          <div class="portfolio-item">
                                                <a href="ProductDetailViewAction.do?no=${cc.getNo()}"><i class="fa fa-link"></i></a>
                                                <h2>${cc.getName()}</h2>
                                             </div>
                                       </div>
                                 </div>
                              </div>
                              </c:when>
                              <c:when test="${cc.getType() == 4}">
                              <div class="iso-box Base col-md-4 col-sm-6">
                              <div class="portfolio-thumb">
                                    <img src="./product/${cc.getNo()}.png" class="img-responsive" alt="Portfolio">
                                       <div class="portfolio-overlay">
                                          <div class="portfolio-item">
                                                <a href="ProductDetailViewAction.do?no=${cc.getNo()}"><i class="fa fa-link"></i></a>
                                                <h2>${cc.getName()}</h2>
                                             </div>
                                       </div>
                                 </div>
                              </div>
                              </c:when>
                              <c:when test="${cc.getType() == 5}">
                              <div class="iso-box Foundation col-md-4 col-sm-6">
                              <div class="portfolio-thumb">
                                    <img src="./product/${cc.getNo()}.png" class="img-responsive" alt="Portfolio">
                                       <div class="portfolio-overlay">
                                          <div class="portfolio-item">
                                                <a href="ProductDetailViewAction.do?no=${cc.getNo()}"><i class="fa fa-link"></i></a>
                                                <h2>${cc.getName()}</h2>
                                             </div>
                                       </div>
                                 </div>
                              </div>
                              </c:when>
                              <c:when test="${cc.getType() == 6}">
                              <div class="iso-box Cushion col-md-4 col-sm-6">
                              <div class="portfolio-thumb">
                                    <img src="./product/${cc.getNo()}.png" class="img-responsive" alt="Portfolio">
                                       <div class="portfolio-overlay">
                                          <div class="portfolio-item">
                                                <a href="ProductDetailViewAction.do?no=${cc.getNo()}"><i class="fa fa-link"></i></a>
                                                <h2>${cc.getName()}</h2>
                                             </div>
                                       </div>
                                 </div>
                              </div>
                              </c:when>
                              <c:when test="${cc.getType() == 7}">
                              <div class="iso-box Powder col-md-4 col-sm-6">
                              <div class="portfolio-thumb">
                                    <img src="./product/${cc.getNo()}.png" class="img-responsive" alt="Portfolio">
                                       <div class="portfolio-overlay">
                                          <div class="portfolio-item">
                                                <a href="ProductDetailViewAction.do?no=${cc.getNo()}"><i class="fa fa-link"></i></a>
                                                <h2>${cc.getName()}</h2>
                                             </div>
                                       </div>
                                 </div>
                              </div>
                              </c:when>
                              <c:when test="${cc.getType() == 8}">
                              <div class="iso-box Concealer col-md-4 col-sm-6">
                              <div class="portfolio-thumb">
                                    <img src="./product/${cc.getNo()}.png" class="img-responsive" alt="Portfolio">
                                       <div class="portfolio-overlay">
                                          <div class="portfolio-item">
                                                <a href="ProductDetailViewAction.do?no=${cc.getNo()}"><i class="fa fa-link"></i></a>
                                                <h2>${cc.getName()}</h2>
                                             </div>
                                       </div>
                                 </div>
                              </div>
                              </c:when>
                              <c:when test="${cc.getType() == 9}">
                              <div class="iso-box Cleansing col-md-4 col-sm-6">
                              <div class="portfolio-thumb">
                                    <img src="./product/${cc.getNo()}.png" class="img-responsive" alt="Portfolio">
                                       <div class="portfolio-overlay">
                                          <div class="portfolio-item">
                                                <a href="ProductDetailViewAction.do?no=${cc.getNo()}"><i class="fa fa-link"></i></a>
                                                <h2>${cc.getName()}</h2>
                                             </div>
                                       </div>
                                 </div>
                              </div>
                              </c:when>
                              </c:choose> 
                               
                                 

                             </c:forEach>

                            </div>
                        </div>

               </div>

         </div>

      </div>
   </div>
</section>

<footer>
	<div class="container">
		<div class="row">

			<div class="col-md-12 col-sm-12">
				<p class="wow fadeInUp"  data-wow-delay="0.3s"></p>
				<ul class="social-icon wow fadeInUp"  data-wow-delay="0.6s">
	
					<li><a href="adminloginView.jsp" class="fa fa-dribbble"></a></li>

				</ul>
			</div>
			
		</div>
	</div>
</footer>


<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/isotope.js"></script>
<script src="js/imagesloaded.min.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/custom.js"></script>

</body>
</html>
