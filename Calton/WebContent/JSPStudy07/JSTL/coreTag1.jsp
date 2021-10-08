<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	변수 생성 및 출력
	<c:set var="id" value="aaa"></c:set><br>
	<c:out value="${id}"></c:out><br><br>
	
	변수 제거 및 출력 <br>
	제거되서 출력이 안됨
	<c:remove var="id"/>
	<c:out value="${id}"></c:out><br>
</body>
</html>