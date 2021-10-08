<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="season" class="question.Season"></jsp:useBean>
<jsp:setProperty property="*" name="season"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:getProperty property="month" name="season"/>
	<jsp:getProperty property="process" name="season"/>
</body>
</html>