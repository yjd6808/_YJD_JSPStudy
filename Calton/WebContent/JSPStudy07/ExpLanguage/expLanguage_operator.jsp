<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	pageContext.setAttribute("input", "");
	pageContext.setAttribute("input2", "aaa");
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>[empty 연산자]</h3>
	empty는 비어있는지 확인하는 연산자 <br>
	
	\${empty input} : ${empty input} <br>
	\${empty input2} : ${empty input2} <br>
	\${empty ""} : ${empty ""}<br>
	
	
	<h3>[일반 연산자]</h3>
	\${10 > 5} : ${10 > 5}<br>
	\${10 >= 5} : ${10 >= 5}<br>
	\${10 + 5} : ${10 + 5}<br>
	 
</body>
</html>