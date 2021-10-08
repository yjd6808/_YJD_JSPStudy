<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <jsp:useBean id="circle" class="area.Circle"></jsp:useBean>
<jsp:setProperty property="*" name="circle"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:getProperty property="process" name="circle"/>
</body>
</html>