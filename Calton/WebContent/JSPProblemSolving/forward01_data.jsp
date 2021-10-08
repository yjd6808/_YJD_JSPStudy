<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	int param = Integer.parseInt(request.getParameter("param"));
	for (int i = 1; i <= 9; i++) {
		out.print(String.format("%d * %d = %d", param, i, param * i));
		out.print("<br>");
	}
%>