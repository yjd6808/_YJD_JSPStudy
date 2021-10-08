<%@page import="org.apache.cxf.transport.http.Cookies"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	Cookie[] cookies = request.getCookies();
	for (int i = 0; i < cookies.length; i++) {
		cookies[i].setMaxAge(0);
		cookies[i].setPath("/");
		response.addCookie(cookies[i]);
	}
	response.sendRedirect("cookie.jsp");
%>