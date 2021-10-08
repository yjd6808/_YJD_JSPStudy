<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String userName = "admin";
	String userPass = "1234";
	
	String paramUserName = request.getParameter("userName");
	String paramUserPass = request.getParameter("userPass");
	
	if (userName.equals(paramUserName) && userPass.equals(paramUserPass)) {
		session.setAttribute("userName", userName);
		response.sendRedirect("session_welcome.jsp");
	} else {
		response.sendRedirect("session.jsp");
	}
%>