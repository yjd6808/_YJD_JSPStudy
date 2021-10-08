<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	session.setAttribute("TestString",  "세션에 저장된 데이터가 바로 접니다^^");
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
		<h3>[세션에 값을 저장하였습니다.]</h3>
	</center>
	<a href="session01_getAttribute.jsp">session01_getAttribute.jsp 파일로 이동</a>
</body>
</html>