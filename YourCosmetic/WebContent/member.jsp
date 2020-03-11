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
			<td><h1>ȸ������&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h1></td>
			</tr>
			<tr>
				<th><h4><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���̵�</p></h4></th>
				<td><input type="text" class="form-control" name="memberId" ></td>		
			</tr>
			<tr>
				<th><h4><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�н�����</p></h4></th>
				<td><input type="password" class="form-control" name="memberPassword" ></td>		
			</tr>
			
			<tr>
				<th><h4><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�̸�</p></h4></th>
				<td><input type="text" class="form-control" name="memberName"></td>		
			</tr>
			
			<tr>
				<th><h4><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�Ǻ�Ÿ��</p></h4></th>
				<td><h4><p><input type="radio" name="skinType" value="oil">  ����  &nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="skinType" value="dry_skin">  �Ǽ� &nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="skinType" value="complex">  ���ռ� &nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="skinType" value="neutral">  �߼� &nbsp;&nbsp;
					</p></h4>
				</td>
			</tr>
			
			<tr>
				<th><h4><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�Ǻ� ��</p></h4></th>
				<td><h4><p><input type="radio" name="skinTone" value="bright"> &nbsp;&nbsp; ������
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="skinTone" value="middle"> &nbsp;&nbsp; �߰���
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="skinTone" value="dark"> &nbsp;&nbsp; ��ο���
					</p></h4>
				</td>		
			</tr>
			
			<tr>
				<th><h4><p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�Ǻ� ��� <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(�ߺ� ����) </p></h4></th>
				<td><h4><p><input type="checkbox" name="problem" value="dry"> &nbsp;&nbsp; ����
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="problem" value="sensitive"> &nbsp;&nbsp; �ΰ�
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="problem" value="acne"> &nbsp;&nbsp; ���帧
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="problem" value="wrinkle"> &nbsp;&nbsp; �ָ�/ź��
					<br>
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="problem" value="whitening"> &nbsp;&nbsp; �̹�
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="problem" value="black_head"> &nbsp;&nbsp; �����/����
					</p></h4>
				</td>		
			</tr>
			
			<tr>
				<th><h4><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ȣ ��</p></h4></th>
				<td><h4><p><input type="radio" name="tone" value="cool"> &nbsp;&nbsp; ����
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="tone" value="warm"> &nbsp;&nbsp; ����</p></h4>
				</td>		
			</tr>
			
			<tr>
				<th><h4><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ȣ ����</p></h4></th>
				<td><h4><p><input type="radio" name="material" value="matte"> &nbsp;&nbsp; ��Ʈ
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="material" value="glossy"> &nbsp;&nbsp; �۷ν�</p></h4>
				</td>		
			</tr>
			
			<tr>
				<th><h4><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���� ���� ����</p></h4></th>
				<td><h4><p><input type="checkbox" name="toxic" value="check">&nbsp;&nbsp;�ѱ�</p></h4>
				</td>		
			</tr>

			
			<tr>
				<td colspan="2">
				<input type="submit" class="btn btn-primary" value="����">
				<input type="reset" class="btn btn-danger" value="���">
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