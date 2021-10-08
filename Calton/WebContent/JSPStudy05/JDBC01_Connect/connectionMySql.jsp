<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	Connection connection = null;
	
	
	try {
		// JVM에 클래스를 로딩하겠다.
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		String url  = "jdbc:mysql://localhost:3307/jspdb";
		String user	= "root";
		String pw	= "1234";
		
		// JDBC에 연결을 요청한다.
		connection = DriverManager.getConnection(url, user, pw);
		out.print("연결이 성공적으로 이뤄졌습니다. ^_^ <br>");	
		
	} catch (SQLException e) {
		
		// 스택트레이스를 문자열로 받음.
		StringWriter sw = new StringWriter();
		PrintWriter pw = new PrintWriter(sw);
		e.printStackTrace(pw);
		String sStackTrace = sw.toString();
		
		out.print("연결에 실패하였습니다. <br><br>");
		out.print(e.getMessage() + "<br>");
		out.print(sStackTrace + "<br>");
		
	} finally {
		
		// 연결이 모두 정상적으로 이뤄진 경우 연결을 종료하겠다.
		if (connection != null) {
			connection.close();
		}
	}
	
	
	%>
</body>
</html>