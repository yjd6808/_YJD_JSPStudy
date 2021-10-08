<%@ page import="javax.naming.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%!   
	Connection connection = null;
	Statement statement = null;
	DataSource dataSource = null;
	ResultSet resultSet = null;
	
	public Connection getConnection() {
		try {
			Context ctx =  new InitialContext();
			dataSource = (DataSource)ctx.lookup("java:comp/env/jdbc/oracle");
			return dataSource.getConnection();	
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} 
	}
%>    
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table width="400" border="1">
		<tr>
			<td>아이디 </td>
			<td>이름 </td>
			<td>등급 </td>
			<td>전화번호 </td>
		</tr>
		<%
			connection = getConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery("select * from member2"); 
			
			while(resultSet.next()) {
		%>  
				<tr>           
					<td><a href="updateView.jsp?id=<%=resultSet.getString("id") %>"><%=resultSet.getString("id") %></a> </td>
					<td><%= resultSet.getString("name") %></td>
					<td><%= resultSet.getInt("class") == 1 ? "일반회원" : "교수님" %></td>
					<td><%= resultSet.getString("tel") %></td>
				</tr>
		<%
			}
		%>
	</table>
</body>
</html>