<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	String userName = "";
	Cookie[] cookies = request.getCookies();

	 for (int i = 0; i < cookies.length; i++) {
		if (cookies[i].getName().equals("userName")){
			userName =cookies[i].getValue();
			break;
		}
	 }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<%= userName %>님 반값습니다.
	</center>
	<a href="cookie_out.jsp">로그 아웃</a>
</body>
</html>