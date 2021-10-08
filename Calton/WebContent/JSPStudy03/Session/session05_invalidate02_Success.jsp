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
		out.print("세션에 설정값 추가를 시도합니다! <br><hr>");
		try {
			session.setAttribute("test-attr", "test-value");
			out.print("세션의 설정값 추가에 성공하였습니다."); 	out.print("<br><hr>");
		}
		catch (Exception e) {
			out.print("오류 발생!"); 					out.print("<br>");
			out.print("세션에 설정값 추가에 실패하였습니다!");	out.print("<br>");
			out.print("사유 : " + e.getMessage());	out.print("<br><hr>");
		}
	}
	 %>

	요청받은 값 : <%= request.getParameter("param") %> <br><hr>
	<% setAttribute(session, out); %>
	<%= request.isRequestedSessionIdValid() ? 
			     "현재 세션은 유효합니다." : 
			     "현재 세션은 유효하지 않습니다." %> <br><hr>
	<% session.invalidate(); %>
	세션을 무효화 시켰습니다. <br><hr>
	<%= request.isRequestedSessionIdValid() ? 
			     "현재 세션은 유효합니다." : 
			     "현재 세션은 유효하지 않습니다." %> <br><hr>
	<% setAttribute(session, out); %>
	
	
</body>
</html>