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
		<h3>[������ ������ ��ȿ�ð��� �����ϴ� ����]</h3>
	</center>
	
	<%
		int inactiveTime = session.getMaxInactiveInterval();
	%>
	������ ���� ��ȿ�ð��� : <%= inactiveTime %>�� �Դϴ�. <br><hr>
	<% 
		session.setMaxInactiveInterval(3600);
		inactiveTime = session.getMaxInactiveInterval();
	%>
	������ ���� ��ȿ�ð��� : <%= inactiveTime %>�� �Դϴ�. <br><hr>
</body>
</html>