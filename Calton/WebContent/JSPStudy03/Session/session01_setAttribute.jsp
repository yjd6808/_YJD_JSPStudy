<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	session.setAttribute("TestString",  "���ǿ� ����� �����Ͱ� �ٷ� ���ϴ�^^");
	session.setAttribute("TestInteger", 1053);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h3>[���ǿ� ���� �����Ͽ����ϴ�.]</h3>
	</center>
	<a href="session01_getAttribute.jsp">session01_getAttribute.jsp ���Ϸ� �̵�</a>
</body>
</html>