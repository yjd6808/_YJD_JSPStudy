<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	Cookie info = new Cookie("test-cookie", String.valueOf(new Random().nextInt(10000)));
	info.setMaxAge(360 * 24 * 60 * 60);
	info.setPath("/");	// ���� ���丮�� �߰�
	response.addCookie(info);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h2>��Ű�� ������ ����Ͽ����ϴ�.</h2>
	</center>	
</body>
</html>