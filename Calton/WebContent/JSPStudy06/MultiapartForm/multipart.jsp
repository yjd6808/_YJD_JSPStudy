<%@page import="com.oreilly.servlet.*"%>
<%@page import="com.oreilly.servlet.multipart.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String uploadPath = getServletContext().getRealPath("/");
	MultipartRequest multi = new MultipartRequest(request, uploadPath);
	String value = multi.getParameter("value");

	if (value == null) {
		out.print("null ÀÔ´Ï´Ù.");
	} else {
		out.print(value);
	}
%>