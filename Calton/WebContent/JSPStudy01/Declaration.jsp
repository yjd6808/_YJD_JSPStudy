<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%--------------------------------------------------------
						�⺻ ����
						
	<%! ����� 	%>  -> 	��������, �Լ�
	<% 	��ũ���� 	%> 	-> 	�ڵ�, ��������
	<%=	��º� 	%>  ->	���ڿ�, ������, �Լ����ϰ� ���
	<%-- �ּ� --	%> 
     --------------------------------------------------------%>

	<%--------------------------------------------------------
						���� ����ϱ� 
      --------------------------------------------------------%>
	<cetner>
	<h3>���� ����ϱ�</h3>
	</cetner>
	<%-- ���� ����, �޼ҵ� �±� --%>
	<%!int data = 50;%>

	<%-- �ڹ� �ҽ� �±�--%>
	<%
		out.println("Value of the variable is : " + data);
	%>

	<hr style="border: 2px solid black">

	<%--------------------------------------------------------
						�Լ� ����ϱ� 
      --------------------------------------------------------%>
	<cetner>
	<h3>�Լ� ����ϱ�</h3>
	</cetner>
	<%!int sum(int a, int b) {
		return a + b;
	}

	String getString(String str) {
		return str;
	}%>
	
	<%
		out.print(String.format("%d + %d = %d", 10, 20, sum(10, 20)));
	%>
	<hr style="border: 2px solid black">

	<%--------------------------------------------------------
						�Լ�, ���� ����ϱ�
      --------------------------------------------------------%>
	<cetner>
	<h3>�Լ�, ���� ����ϱ�</h3>
	</cetner>
	<%!String str = "�ȳ��ϼ���";
		int a = 5, b = -5;
		
		public int abs(int n) {
			return n < 0 ? n = -n : n;
	}%>
	<%
		out.print(str + "<br>");
		out.print(a + "�� ���밪�� " + abs(a) + "<br>");
		out.print(b + "�� ���밪�� " + abs(b) + "<br>");
	%>

	<hr style="border: 2px solid black">
	<%--------------------------------------------------------
					��ũ��Ʈ�� �������� ���
     --------------------------------------------------------%>
	<cetner>
	<h3>��ũ��Ʈ�� �������� ���</h3>
	</cetner>
	<%
		int a = 1;
		int b = 2;
		out.print(String.format("%d + %d = %d", a, b, a + b));
	%>
	<hr style="border: 2px solid black">

	<%--------------------------------------------------------
					��ũ��Ʈ�� �ݺ��� + out ��� ����
     --------------------------------------------------------%>
	<cetner>
	<h3>��ũ��Ʈ�� �ݺ��� + out ��� ����</h3>
	</cetner>
	<%
		for (int i = 0; i < 10; i++) {
		if (i % 2 == 0) {
			out.print(i + "<br>");
		}
	}
	%>

	<%--------------------------------------------------------
					��ũ��Ʈ�� �ݺ��� + �±� ����
     --------------------------------------------------------%>
	<cetner>
	<h3>��ũ��Ʈ�� �ݺ��� + �±� ����</h3>
	</cetner>
	<%
		for (int i = 0; i < 5; i++) {
	%>
				�ȳ��ϼ���<br>
	<%
		}
	%>
	<hr style="border: 2px solid black">

	<%--------------------------------------------------------
					  Ŭ���� ����Ʈ �� ��¥ ���
     --------------------------------------------------------%>
	<cetner>
	<h3>Ŭ���� ����Ʈ �� ��¥ ���</h3>
	</cetner>
	<%
		// ���� ��¥ ���
	Date d = new Date();
	String strDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(d);
	out.print(strDate);
	%>
	<hr style="border: 2px solid black">
	<%--------------------------------------------------------
					           ǥ�������� ��¥ ���
     --------------------------------------------------------%>
	<cetner>
	<h3>ǥ�������� ��¥ ���</h3>
	</cetner>
	<p style="color: black;">
		<%=Calendar.getInstance().getTime()%>
	</p>
	<hr style="border: 2px solid black">
</body>
</html>