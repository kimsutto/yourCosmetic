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
     
	<form action="MemberAction.do" method="post">
		<table class="table table-boardered">
			<tr>
			<th></th>
			<td><h1>회원가입&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h1></td>
			</tr>
			<tr>
				<th><h4><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;아이디</p></h4></th>
				<td><input type="text" class="form-control" name="memberId" ></td>		
			</tr>
			<tr>
				<th><h4><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;패스워드</p></h4></th>
				<td><input type="password" class="form-control" name="memberPassword" ></td>		
			</tr>
			
			<tr>
				<th><h4><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;이름</p></h4></th>
				<td><input type="text" class="form-control" name="memberName"></td>		
			</tr>
			
			<tr>
				<th><h4><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;피부타입</p></h4></th>
				<td><h4><p><input type="radio" name="skinType" value="oil">  지성  &nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="skinType" value="dry_skin">  건성 &nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="skinType" value="complex">  복합성 &nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="skinType" value="neutral">  중성 &nbsp;&nbsp;
					</p></h4>
				</td>
			</tr>
			
			<tr>
				<th><h4><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;피부 톤</p></h4></th>
				<td><h4><p><input type="radio" name="skinTone" value="bright"> &nbsp;&nbsp; 밝은톤
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="skinTone" value="middle"> &nbsp;&nbsp; 중간톤
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="skinTone" value="dark"> &nbsp;&nbsp; 어두운톤
					</p></h4>
				</td>		
			</tr>
			
			<tr>
				<th><h4><p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;피부 고민 <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(중복 선택) </p></h4></th>
				<td><h4><p><input type="checkbox" name="problem" value="dry"> &nbsp;&nbsp; 건조
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="problem" value="sensitive"> &nbsp;&nbsp; 민감
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="problem" value="acne"> &nbsp;&nbsp; 여드름
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="problem" value="wrinkle"> &nbsp;&nbsp; 주름/탄력
					<br>
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="problem" value="whitening"> &nbsp;&nbsp; 미백
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="problem" value="black_head"> &nbsp;&nbsp; 블랙헤드/피지
					</p></h4>
				</td>		
			</tr>
			
			<tr>
				<th><h4><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;선호 톤</p></h4></th>
				<td><h4><p><input type="radio" name="tone" value="cool"> &nbsp;&nbsp; 쿨톤
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="tone" value="warm"> &nbsp;&nbsp; 웜톤</p></h4>
				</td>		
			</tr>
			
			<tr>
				<th><h4><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;선호 재질</p></h4></th>
				<td><h4><p><input type="radio" name="material" value="matte"> &nbsp;&nbsp; 매트
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="material" value="glossy"> &nbsp;&nbsp; 글로시</p></h4>
				</td>		
			</tr>
			
			<tr>
				<th><h4><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;유해 성분 필터</p></h4></th>
				<td><h4><p><input type="checkbox" name="toxic" value="check">&nbsp;&nbsp;켜기</p></h4>
				</td>		
			</tr>

			
			<tr>
				<td colspan="2">
				<input type="submit" class="btn btn-primary" value="전송">
				<input type="reset" class="btn btn-danger" value="취소">
				</td>
			</tr>
			
			
		</table>
	</form>
	</div>
	
	</div>
	</div>
	</div>
	</section>

</body>
</html>