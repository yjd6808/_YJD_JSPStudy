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
		<h3>[jsp:param �׼��±׿� ���� ����]</h3>
	</center>
	<hr>
	�� ������ jsp_action_param01_red.jsp <br>
	�� �������� ����� ���������� ��Ÿ�����? <br>
	�� �������� ����� ��������� ��Ÿ�����? <br>
	forward �׼� �±װ� ����Ǹ� �� �������� ������ ��µ��� �������ϴ�. <br>
	<jsp:forward page="jsp_action_param01_yellow.jsp">
		<jsp:param value="jsp_action_param01_red.jsp" name="url"/>
		<jsp:param value="Happy New Year!" name="message"/>
	</jsp:forward>
</body>
</html>