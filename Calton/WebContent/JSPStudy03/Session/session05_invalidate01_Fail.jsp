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
		<h3>[������ ��ȿȭ ��Ű�� ����]</h3>
	</center>
	<%
	%>
	<%= request.isRequestedSessionIdValid() ? 
			     "���� ������ ��ȿ�մϴ�." : 
			     "���� ������ ��ȿ���� �ʽ��ϴ�." %> <br><hr>
	<% session.invalidate(); %>
	<%= request.isRequestedSessionIdValid() ? 
			     "���� ������ ��ȿ�մϴ�." : 
			     "���� ������ ��ȿ���� �ʽ��ϴ�." %> <br><hr>
</body>
</html>