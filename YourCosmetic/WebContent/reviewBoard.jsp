<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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


<section id="header" class="header-five">
	<div class="container">
		<div class="row">

			<div class="col-md-offset-3 col-md-6 col-sm-offset-2 col-sm-8">
          <div class="header-thumb">
              <h1 class="wow fadeIn" data-wow-delay="0.6s">Review Board</h1>

          </div>
			</div>

		</div>
	</div>		
</section>



<section id="blog">
   <div class="container">
      <div class="row">
  
        
            
	<c:forEach var="b" items="${boList}">
	
	
        <div class="wow fadeInUp col-md-3 col-sm-3" data-wow-delay="0.5s">
           <div class="blog-thumb">
         
   
               <a href="ProductDetailViewAction.do?no=${b.getDno()}"><img src="./product/${b.getDno()}.png"  class="img-responsive" alt="Blog"></a>
               <a href="ProductDetailViewAction.do?no=${b.getDno()}"><h1> ${b.getName()} </h1></a>
            
                  <div class="post-format">
                    <span>By <a href="#">${b.getId() }</a></span>
                    <span><i class="fa fa-date"></i> ${b.getType() }</span>
                     <p>${b.getContext()}</p>
                 </div>
                
            </div>
        </div>

	</c:forEach>    

      </div>
   </div>
</section>

<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/custom.js"></script>

</body>
</html>