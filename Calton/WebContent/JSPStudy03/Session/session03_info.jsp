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
		<h3>[���� ������ ������ �޼ҵ带 ����� ����]</h3>
	</center>
	<%
		String idStr = session.getId();
		long lastConnectedTime = session.getLastAccessedTime();		// ������ ������ �ð� (ms) 
		long createdTime = session.getCreationTime();				// ������ ������ �ð� (ms)
		long usedTime = lastConnectedTime - createdTime;			// ������ ���������� �ӹ� �ð� (ms)
		int inactive = session.getMaxInactiveInterval() / 60;		// ���ǿ� ������ ��ȿ�ð��� ������
		boolean isNew = session.isNew();							// ������ ���� ����������� ���� 
	%>
	
	[1] ���� ID�� [<%= idStr %>] �Դϴ�. <br>
	[2] ����� �� ����Ʈ�� �ӹ� �ð� <%= usedTime / 60000 %> ���Դϴ�. <br>
	[3] ������ ��ȿ�ð��� <%= inactive %>�� �Դϴ�. <br>
	[4] <%= isNew ? "������ ���� ����������ϴ�." : "���� ������� ������ �ƴմϴ�." %> <br>
</body>
</html>