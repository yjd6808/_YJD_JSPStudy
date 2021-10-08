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
		<h3>[세션 정보를 얻어오는 메소드를 사용한 예제]</h3>
	</center>
	<%
		String idStr = session.getId();
		long lastConnectedTime = session.getLastAccessedTime();		// 마지막 접속한 시간 (ms) 
		long createdTime = session.getCreationTime();				// 세션이 생성된 시간 (ms)
		long usedTime = lastConnectedTime - createdTime;			// 세션이 웹페이지에 머문 시간 (ms)
		int inactive = session.getMaxInactiveInterval() / 60;		// 세션에 설정된 유효시간을 가져옴
		boolean isNew = session.isNew();							// 세션이 새로 만들어졌는지 여부 
	%>
	
	[1] 세션 ID는 [<%= idStr %>] 입니다. <br>
	[2] 당신이 웹 사이트에 머문 시간 <%= usedTime / 60000 %> 분입니다. <br>
	[3] 세션의 유효시간은 <%= inactive %>분 입니다. <br>
	[4] <%= isNew ? "세션이 새로 만들어졌습니다." : "새로 만들어진 세션이 아닙니다." %> <br>
</body>
</html>