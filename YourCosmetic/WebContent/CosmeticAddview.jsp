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
              <h1 class="wow fadeIn" data-wow-delay="1.6s">ȭ��ǰ �߰�</h1>
              
              
<form action="CosmeticAddAction.do" method="post" enctype="multipart/form-data">    
	<p>�̹��� ÷��: <input type ="file" name="imagefile">
    <p>ȭ��ǰ ����: <input type="text" name="type">
    <p>ȭ��ǰ �̸� : <input type="text" name="name">
    <p>������ : <input type = "text" name = "manufacturer">
    <p>ȭ��ǰ ���� :  <input type = "text" name = "price">
    <p>�Ǻ�Ÿ��: <input type="radio" name="skinType" value="oil">  ����  &nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="skinType" value="dry_skin">  �Ǽ� &nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="skinType" value="complex">  ���ռ� &nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="skinType" value="neutral">  �߼� &nbsp;&nbsp;
					
    <p>�Ǻ���: <input type="radio" name="skinTone" value="bright"> &nbsp;&nbsp; ������
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="skinTone" value="middle"> &nbsp;&nbsp; �߰���
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="skinTone" value="dark"> &nbsp;&nbsp; ��ο���
					
    <p>�Ǻΰ��: <input type="checkbox" name="problem" value="dry"> &nbsp;&nbsp; ����
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="problem" value="sensitive"> &nbsp;&nbsp; �ΰ�
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="problem" value="acne"> &nbsp;&nbsp; ���帧
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="problem" value="wrinkle"> &nbsp;&nbsp; �ָ�/ź��
					<br>
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="problem" value="whitening"> &nbsp;&nbsp; �̹�
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="problem" value="black_head"> &nbsp;&nbsp; �����/����
					
    <p>��ȣ��: <input type="radio" name="tone" value="cool"> &nbsp;&nbsp; ����
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="tone" value="warm"> &nbsp;&nbsp; ����
    <p>��ȣ����:<input type="radio" name="material" value="matte"> &nbsp;&nbsp; ��Ʈ
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="material" value="glossy"> &nbsp;&nbsp; �۷ν�
 	<p>���ؼ��� ���� : <input type="checkbox" name="toxic" value="check">&nbsp;&nbsp;�ѱ�
 	<p>���� ���� :   <textarea class="form-control" id="toxicStr" rows="2" ></textarea>
 	
 	<p>���� :  <textarea class="form-control" id="ingredient" rows="5" ></textarea>
 	<p>ȭ��ǰ �Ǹ� ������ : <input type = text" name="url">
 	
    <p><input type="submit" value="Add">
       <input type="reset" value="�ٽþ���">
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