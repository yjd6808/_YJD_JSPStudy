<%@page import="org.apache.cxf.transport.http.Cookies"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.removeAttribute("userName");
	response.sendRedirect("session.jsp");
%>