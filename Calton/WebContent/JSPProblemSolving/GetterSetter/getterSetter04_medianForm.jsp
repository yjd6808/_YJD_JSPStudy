<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="median" class="question.Median"></jsp:useBean>
<jsp:setProperty property="*" name="median"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:getProperty property="process" name="median"/>
</body>
</html>