<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isErrorPage="true"%>
<% response.setStatus(HttpServletResponse.SC_OK); %> <%-- �̰��� ���� �������� ���������� ����Ǵ� ���������� �����ϴ� �ڵ��. �� �ڵ带 �����ϸ� �� �������� ��ü���� ���� �������� ǥ���Ѵ�. --%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>isError Page</title>
</head>
<body>
	<p>������ �߻��Ͽ����ϴ�.
	<p>���� : <%=exception%>
	<p>toString() : <%=exception.toString()%>
	<p>getClass().getName() : <%=exception.getClass().getName()%>
	<p>getMessage() : <%=exception.getMessage()%>

</body>
</html>