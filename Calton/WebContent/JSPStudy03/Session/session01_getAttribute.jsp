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
		<h3>[세션 값을 얻어오는 예제]</h3>
	</center>
	
	<%
		String testString = (String)session.getAttribute("TestString");
		Integer testInteger = (Integer)session.getAttribute("TestInteger");
	
		out.print("설정된 세션값[1]=> TestString  : " + testString); out.print("<br><br>");
		out.print("설정된 세션값[2]=> TestInteger : " + testInteger); out.print("<br><br>");
	%>
</body>
</html>