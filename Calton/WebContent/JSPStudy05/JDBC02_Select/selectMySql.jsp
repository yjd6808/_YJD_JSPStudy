<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
	Connection connection = null;			// 데이터베이스 연결 객체
	Statement stmt = null;					// 데이터베이스에게 쿼리작업을 하기위한 객체
	ResultSet rs = null;					// 쿼리 실행 결과를 받아보기 위한 객체
	
	public boolean connectOracle(JspWriter out) throws Exception {
		// JVM에 클래스를 로딩하겠다.
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			String url  = "jdbc:mysql://localhost:3307/jspdb";
			String user	= "root";
			String pw	= "1234";
			
			// JDBC에 연결을 요청한다.
			connection = DriverManager.getConnection(url, user, pw);
			return true;
		}
		catch (SQLException e) {
			// 스택트레이스를 문자열로 받음.
			StringWriter sw = new StringWriter();
			PrintWriter pw = new PrintWriter(sw);
			e.printStackTrace(pw);
			String sStackTrace = sw.toString();
			
			out.print("연결에 실패하였습니다. <br><br>");
			out.print(e.getMessage() + "<br>");
			out.print(sStackTrace + "<br>");
			return false;
		}
	}
	
	public boolean finalizeConnection() {
		if (connection == null) {
			return true;
		}
		
		try {
			if (rs != null) {
				rs.close();
				rs = null;
			}
			if (stmt != null) {
				stmt.close();
				stmt = null;
			}
			if (connection != null) {
				connection.close();
				connection = null;
			}
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table width="400" border="1">
	<tr>
		<td>아이디</td>
		<td>이름</td>
		<td>등급</td>
		<td>전화번호</td>
	</tr>
		
		<%
		if (connectOracle(out)) {
			
			try {
				stmt = connection.createStatement();
				rs = stmt.executeQuery("select * from member3");
				while (rs.next()) {
					%>
					<tr>
						<td><%= rs.getString("id") %></td>
						<td><%= rs.getString("name") %></td>
						<td><%= rs.getInt("class") == 1 ? "일반회원" : "교수님" %></td>
						<td><%= rs.getString("tel") %></td>
					</tr>
					<%
				}
				
				finalizeConnection();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		%>
	
</table>
</body>
</html>