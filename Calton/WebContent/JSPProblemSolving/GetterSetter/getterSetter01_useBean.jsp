<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>원의 면적 출력하기</h1>
	<jsp:useBean id="circle" class="area.Circle"></jsp:useBean>
	<jsp:setProperty property="radious" name="circle" value="11"/>
	반지름이 <jsp:getProperty property="radious" name="circle"/>인 원의 면적은 <jsp:getProperty property="process" name="circle"/>
</body>
</html>