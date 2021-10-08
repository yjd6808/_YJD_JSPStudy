<%@page import="javax.naming.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%!
	Connection connection;
	Statement statement;
	ResultSet resultSet;
	
	private Connection getConnection() {
		Connection conn = null;
		try {
			Context ctx = new InitialContext();
			DataSource dataSource = (DataSource)ctx.lookup("java:comp/env/jdbc/oracle");
			conn = dataSource.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn; 
	}
	
	private void finalizeConnection() {
		try {
			if (resultSet != null) {
				resultSet.close();
				resultSet = null;
			}
			
			if (statement != null) {
				statement.close();
				statement =  null;
			}
			
			if (connection != null) {
				connection.close();
				connection = null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	table, td {
		border: 1px solid #000;
	}
</style>
</head>
<body>
	<table>
		<tr>
			<td>사원번호</td>
			<td>사원명</td>
			<td>직급</td>
			<td>상관번호</td>
			<td>입사일자</td>
			<td>급여</td>
			<td>커미션</td>
			<td>부서번호</td>
		</tr>
		
		<%
			connection = getConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery("select * from emp");
			
			while (resultSet.next()) {
				out.print("<tr>");
				out.print("<td>" + resultSet.getString(1) + "</td>");
				out.print("<td>" + resultSet.getString(2) + "</td>");
				out.print("<td>" + resultSet.getString(3) + "</td>");
				out.print("<td>" + resultSet.getString(4) + "</td>");
				out.print("<td>" + resultSet.getTimestamp(5).toString() + "</td>");
				out.print("<td>" + resultSet.getString(6) + "</td>");
				out.print("<td>" + resultSet.getString(7) + "</td>");
				out.print("<td>" + resultSet.getString(8) + "</td>");
				out.print("</tr>");
			}
			
			// 연결정리			
			finalizeConnection();
		%>
	</table>
</body>
</html>