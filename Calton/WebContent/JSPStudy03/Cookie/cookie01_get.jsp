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
		<h3>��Ű�� ���� ������ ����</h3>
	</center>	
	���� ������ ��Ű�� ���� => <%= request.getCookies().length %> <hr>
	
	<%
		Cookie[] cookies = request.getCookies();
		for (int i = 0; i < cookies.length; i++) {
			out.print(i + "��° ������ ����� �̸� : " + cookies[i].getName()); out.print("<br>");
			out.print(i + "��° ������ ����� �� : " + cookies[i].getValue()); out.print("<br>");
			out.print("<hr>");
		}
	%>
</body>
</html>