<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isErrorPage="true"%>
<% response.setStatus(HttpServletResponse.SC_OK); %> <%-- �̰��� ���� �������� ���������� ����Ǵ� ���������� �����ϴ� �ڵ��. �� �ڵ带 �����ϸ� �� �������� ��ü���� ���� �������� ǥ���Ѵ�. --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<p>Error code 500 ����
<p>Internal Server Error, ���� ���� ���� - �� ������ �� ������ ��û������ ������ �� ���� ��쿡 �߻��� 
<p>����Ÿ��:: <%= exception.getClass().getName()%>  //�ͼ��� �⺻ ��ü�� Ŭ���� �̸��� ���
<p>�����޼���:: <%= exception.getMessage()%>   //���ܸ޼������
</body>
</html>