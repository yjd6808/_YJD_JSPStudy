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
	<h3>[foward �׼� �±׿� ���� ����]</h3>
	</center>
	<hr>
	�� ������ red.jsp �Դϴ�.
	<br>
	�� �������� ������ ���������� ��Ÿ�����?<br>
	�� �������� ������ ��������� ��Ÿ�����?<br>
	<hr>
	forward �׼� �±װ� ����Ǹ� �� �������� ������ ��µ��� �ʽ��ϴ�.
	<br>
	
<!-- 
�����ϸ� URL�� red.jsp ������ ���� ������ yellow.jsp ������ ��µǴ� ���� �� �� �ִ�.
sendRedirect�� URL�� �ٲ����� forward �׼��� URL�� ������ä�� ������ ����� �ٲ۴�. 
-->
	<jsp:forward page="yellow.jsp"></jsp:forward>
</body>
</html>