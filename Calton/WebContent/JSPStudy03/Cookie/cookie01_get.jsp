<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h3>쿠키의 정보 얻어오는 예제</h3>
	</center>	
	현재 설정된 쿠키의 갯수 => <%= request.getCookies().length %> <hr>
	
	<%
		Cookie[] cookies = request.getCookies();
		for (int i = 0; i < cookies.length; i++) {
			out.print(i + "번째 설정된 쿠기의 이름 : " + cookies[i].getName()); out.print("<br>");
			out.print(i + "번째 설정된 쿠기의 값 : " + cookies[i].getValue()); out.print("<br>");
			out.print("<hr>");
		}
	%>
</body>
</html>