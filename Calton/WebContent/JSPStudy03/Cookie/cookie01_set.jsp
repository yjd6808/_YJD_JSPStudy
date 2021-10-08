<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	Cookie info = new Cookie("test-cookie", String.valueOf(new Random().nextInt(10000)));
	info.setMaxAge(360 * 24 * 60 * 60);
	info.setPath("/");	// 현재 디렉토리에 추가
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
		<h2>쿠키의 정보를 등록하였습니다.</h2>
	</center>	
</body>
</html>