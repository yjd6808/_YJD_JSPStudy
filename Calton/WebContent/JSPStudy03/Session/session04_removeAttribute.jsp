<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Enumeration"%>
<%@page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h3>[������ ���ǰ��� �����ϴ� ����]</h3>
	</center>
	
	<%! 
		void printAllAttribute(JspWriter out, HttpSession session) throws IOException {
			Enumeration<String> attributeNames = session.getAttributeNames();
			while (attributeNames.hasMoreElements()) {
				String attributeName = attributeNames.nextElement();
				out.print(attributeName + " : " + session.getAttribute(attributeName));
				out.print("<br>");
			}
		}	
	%>
	<%
		session.setAttribute("value1", "���� ���ǿ� ����� ù��° ���̿���.");
		session.setAttribute("value2", "�� �ι�° ���̴�.");
		session.setAttribute("value3", 3);
	%>
	���ǿ� 3���� ������ �߰��߽��ϴ�~! <br><hr>
	���ǿ� ����� ������ ����� ����մϴ�! <br>
	<% printAllAttribute(out, session); %>
	<br><hr>
	<%
		session.removeAttribute("value1");
		session.removeAttribute("value2");
		session.removeAttribute("value3");
	%>
	�Ʊ� �߰����� 3���� ������ �����Ͽ����ϴ�. <br><hr>
	���ǿ� ����� ������ ����� ����մϴ�! <br>
	<% printAllAttribute(out, session); %>
	���� �ƹ��͵� �ȳ�����? �����߱� �����Դϴ�! <br><hr>
</body>
</html>