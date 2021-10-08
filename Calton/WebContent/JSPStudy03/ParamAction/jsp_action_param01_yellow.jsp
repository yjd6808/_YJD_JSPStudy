<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body bgcolor="yellow">
	<center>
		<h3>[jsp:param 액션태그에 대한 예제]</h3>
	</center>
	<hr>
	이 파일은 jsp_action_param01_yellow.jsp.jsp 파일입니다. <br><hr>
	현재 웹 브라우저에 나타나는 웹페이지는  <br>
	<%= request.getParameter("url") %> 로 부터 이동되었습니다. <br>
	메시지 : <%= request.getParameter("message") %> <br>
</body>
</html>