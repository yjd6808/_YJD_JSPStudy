<%@page import="java.io.IOException"%>
<%@page import="java.io.IOError"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%!
	public void setAttribute(HttpSession session, JspWriter out) throws IOException {
		out.print("���ǿ� ������ �߰��� �õ��մϴ�! <br><hr>");
		try {
			session.setAttribute("test-attr", "test-value");
			out.print("������ ������ �߰��� �����Ͽ����ϴ�."); 	out.print("<br><hr>");
		}
		catch (Exception e) {
			out.print("���� �߻�!"); 					out.print("<br>");
			out.print("���ǿ� ������ �߰��� �����Ͽ����ϴ�!");	out.print("<br>");
			out.print("���� : " + e.getMessage());	out.print("<br><hr>");
		}
	}
	 %>

	��û���� �� : <%= request.getParameter("param") %> <br><hr>
	<% setAttribute(session, out); %>
	<%= request.isRequestedSessionIdValid() ? 
			     "���� ������ ��ȿ�մϴ�." : 
			     "���� ������ ��ȿ���� �ʽ��ϴ�." %> <br><hr>
	<% session.invalidate(); %>
	������ ��ȿȭ ���׽��ϴ�. <br><hr>
	<%= request.isRequestedSessionIdValid() ? 
			     "���� ������ ��ȿ�մϴ�." : 
			     "���� ������ ��ȿ���� �ʽ��ϴ�." %> <br><hr>
	<% setAttribute(session, out); %>
	
	
</body>
</html>