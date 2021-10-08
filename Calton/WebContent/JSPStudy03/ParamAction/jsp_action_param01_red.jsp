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
		<h3>[jsp:param 액션태그에 대한 예제]</h3>
	</center>
	<hr>
	이 파일은 jsp_action_param01_red.jsp <br>
	웹 브라우저에 배경이 빨간색으로 나타날까요? <br>
	웹 브라우저에 배경이 노란색으로 나타날까요? <br>
	forward 액션 태그가 실행되면 이 페이지의 내용은 출력되지 ㅇ낳습니다. <br>
	<jsp:forward page="jsp_action_param01_yellow.jsp">
		<jsp:param value="jsp_action_param01_red.jsp" name="url"/>
		<jsp:param value="Happy New Year!" name="message"/>
	</jsp:forward>
</body>
</html>