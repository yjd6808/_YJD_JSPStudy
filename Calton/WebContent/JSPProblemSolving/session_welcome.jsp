<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<%= (String)session.getAttribute("userName") %>�� �ݰ����ϴ�.
	</center>
	<a href="session_out.jsp">�α� �ƿ�</a>
</body>
</html>