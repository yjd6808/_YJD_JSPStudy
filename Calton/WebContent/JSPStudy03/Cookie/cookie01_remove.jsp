<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%! String n = ""; %>
<%
	Cookie[] cookies = request.getCookies();
	for (int i = 0; i < cookies.length; i++) {
		if (cookies[i].getName().equals("test-cookie")) {
			cookies[i].setPath("/");
			cookies[i].setMaxAge(0);
			response.addCookie(cookies[i]);
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<center>
		
		<h2>test-cookie ��Ű�� ������ �����Ͽ����ϴ�.</h2>
	</center><hr>
	����� : <%= n %>	
</body>
</html>