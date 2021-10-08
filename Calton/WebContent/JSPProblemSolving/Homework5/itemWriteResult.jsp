<%@page import="java.io.UnsupportedEncodingException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%!
	String toKor(String str) {
		if (str == null || str.length() <= 0) {
			return "str is null";
		}
		
		try {
			return new String(str.getBytes("8859_1"), "euc_kr");
		} catch (UnsupportedEncodingException e) {
			return "euc_kr convert to fail";
		}
	}

	Connection getConnection() throws Exception {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		String url  = "jdbc:oracle:thin:@localhost:1521:XE";
		String user	= "scott";
		String pw	= "tiger";
		
		return DriverManager.getConnection(url, user, pw);
	}
%>
<%
	try {
		Connection conn = getConnection();
		PreparedStatement psmt = conn.prepareStatement("insert into item values (?, ?, ?)");
		psmt.setString(1, toKor((String)request.getParameter("name")));
		psmt.setInt(2, Integer.parseInt(request.getParameter("price")));
		psmt.setString(3, toKor((String)request.getParameter("description")));
		
		if (psmt.executeUpdate() == 0) {
			System.out.print("Fail");
		} else {
			System.out.print("Success");
		}
		
		psmt.close();
		conn.close();
		
	} catch (Exception e) {
		e.printStackTrace();
	}
%>

<a href="itemWrite.jsp">결과 보기</a>