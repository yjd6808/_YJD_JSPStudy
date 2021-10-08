<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<p> 문자열 분리 </p>
	<c:set var="texts" value="${fn:split('ab1 ab2 ab3', ' ')}"></c:set>
	<c:forEach var="i" begin="0" end="${fn:length(texts) - 1}">
			<p> text[${i}] = ${texts[i]}</p>
	</c:forEach>
	
	<p><c:out value="${fn:join(texts, '-')}"></c:out></p>
</body>
</html>