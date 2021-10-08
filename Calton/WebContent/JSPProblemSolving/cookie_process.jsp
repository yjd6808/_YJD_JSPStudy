<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String userName = "admin";
	String userPass = "1234";
	
	String paramUserName = request.getParameter("userName");
	String paramUserPass = request.getParameter("userPass");
	
	if (userName.equals(paramUserName) && userPass.equals(paramUserPass)) {
		Cookie userInfoCookie = new Cookie("userName", userName);
		userInfoCookie.setMaxAge(360 * 24 * 60 * 60);
		userInfoCookie.setPath("/");
		response.addCookie(userInfoCookie);
		response.sendRedirect("cookie_welcome.jsp");
	} else {
		response.sendRedirect("cookie.jsp");
	}
%>