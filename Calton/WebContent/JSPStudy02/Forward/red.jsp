<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body bgcolor="red">
	<center>
	<h3>[foward 액션 태그에 대한 예제]</h3>
	</center>
	<hr>
	이 파일은 red.jsp 입니다.
	<br>
	웹 브라우저에 배경색이 빨간색으로 나타날까요?<br>
	웹 브라우저에 배경색이 노란색으로 나타날까요?<br>
	<hr>
	forward 액션 태그가 실행되면 이 페이지의 내용은 출력되지 않습니다.
	<br>
	
<!-- 
실행하면 URL은 red.jsp 이지만 실제 내용은 yellow.jsp 내용이 출력되는 것을 알 수 있다.
sendRedirect는 URL을 바꾸지만 forward 액션은 URL을 유지한채로 페이지 모습만 바꾼다. 
-->
	<jsp:forward page="yellow.jsp"></jsp:forward>
</body>
</html>