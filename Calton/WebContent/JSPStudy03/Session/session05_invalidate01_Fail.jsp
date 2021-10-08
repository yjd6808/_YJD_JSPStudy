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
		<h3>[세션을 무효화 시키는 예제]</h3>
	</center>
	<%
	%>
	<%= request.isRequestedSessionIdValid() ? 
			     "현재 세션은 유효합니다." : 
			     "현재 세션은 유효하지 않습니다." %> <br><hr>
	<% session.invalidate(); %>
	<%= request.isRequestedSessionIdValid() ? 
			     "현재 세션은 유효합니다." : 
			     "현재 세션은 유효하지 않습니다." %> <br><hr>
</body>
</html>