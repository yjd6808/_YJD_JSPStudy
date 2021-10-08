<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<form method="get" action="../Receiver/UTF8.jsp" >
		<input type="text" name="param"><br>
		<input type="submit" value="GET Send">
	</form>
	
	<form method="get" action="../Receiver/UTF8.jsp" >
		<input type="text" name="param"><br>
		<input type="submit" value="POST Send">
	</form>
</body>
</html>