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
		<h3>[설정된 세션의 유효시간을 변경하는 예제]</h3>
	</center>
	
	<%
		int inactiveTime = session.getMaxInactiveInterval();
	%>
	세션의 현재 유효시간은 : <%= inactiveTime %>초 입니다. <br><hr>
	<% 
		session.setMaxInactiveInterval(3600);
		inactiveTime = session.getMaxInactiveInterval();
	%>
	세션의 현재 유효시간은 : <%= inactiveTime %>초 입니다. <br><hr>
</body>
</html>