<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="">
	<meta name="description" content="">
	<title>Your Cosmetic Homepage - Admin Login</title>

	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/animate.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/ionicons.min.css">
	<link rel="stylesheet" href="css/style.css">
	<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700,300' rel='stylesheet' type='text/css'>
	
</head>
<body>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

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




<section id="header" class="header-three">

	<div class="container">
		<div class="row">
			<div class="col-xs-3 col-sm-3"></div>

			<div class="col-xs-6 col-sm-6">
				<h1>AdminLogin</h1>
				<form action="LoginAction2.do" method="post">
					<table class="table table-striped">
						<tr>
							<td>아이디</td>
							<td><input type="text" name="userID" class="form-control" value="${id}"></td>
						</tr>

						<tr>
							<td>패스워드</td>
							<td><input type="password" name="userPW" class="form-control"></td>
						</tr>
						
							<td colspan="2">
							<input type="submit" class="form-control"
								value="관리자 로그인" style="background-color: #5DB85D; color:#fff; font-weight: bold;">
							</td>
						</tr>
					
					</table>
				</form>

			</div>


		</div>
		<!-- row -->
	</div><!-- container -->
</section>

</body>
</html>