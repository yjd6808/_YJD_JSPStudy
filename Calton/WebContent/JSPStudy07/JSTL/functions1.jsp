<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<p> Java ���ڿ� �˻� </p>
	<p> Hello, Java Server pages! => ${fn:contains("Hello, Java Server pages!", "Java")} </p>
	
	<p> Java ���ڿ� ��ҹ��� ���� �˻� </p>
	<p> Hello, Java Server pages! => ${fn:containsIgnoreCase("Hello, Java Server pages!", "Java")} </p>
	<p> Hello, Java Server pages! => ${fn:containsIgnoreCase("Hello, Java Server pages!", "java")} </p> 
</body>
</html>