<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	Date lastDate = new Date(System.currentTimeMillis());
	Cookie lastConnectionDateCookie =  new Cookie("last-connection-date", lastDate.toGMTString());
	lastConnectionDateCookie.setMaxAge(360 * 24 * 60 * 60);
	lastConnectionDateCookie.setPath("/");	// ���� ���丮�� �߰�
	response.addCookie(lastConnectionDateCookie);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h2>last-connection-date ��Ű�� ������ ����Ͽ����ϴ�.</h2>
	</center>	
</body>
</html>