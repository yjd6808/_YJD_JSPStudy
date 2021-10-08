<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%!
	ResultSet rs;
	Connection conn;
	Statement stmt;

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
		conn = getConnection();
		stmt = conn.createStatement();
		rs = stmt.executeQuery("select * from item");
	} catch (Exception e) {
		e.printStackTrace();
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>입력 완료된 정보</h1>
	<table style="border: 1px solid #000">
		<%
			while (rs.next()) {
				String name = rs.getString(1);
				int price = rs.getInt(2);
				String decription = rs.getString(3);
				
				%>
					<tr>
						<td style="border: 1px solid #000"><%= name %></td>
						<td style="border: 1px solid #000"><%= price %></td>
						<td style="border: 1px solid #000"><%= decription %></td>
					</tr>
				<%
			}
		%>
	</table>
</body>
</html>