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
	���� ���� �� ���
	<c:set var="id" value="aaa"></c:set><br>
	<c:out value="${id}"></c:out><br><br>
	
	���� ���� �� ��� <br>
	���ŵǼ� ����� �ȵ�
	<c:remove var="id"/>
	<c:out value="${id}"></c:out><br>
</body>
</html>