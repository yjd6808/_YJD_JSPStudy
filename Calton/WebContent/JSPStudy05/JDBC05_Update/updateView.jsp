<%@ page import="javax.naming.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%!
	Connection connection = null;
	PreparedStatement preparedStatement = null;
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
	
	public void releaseConnection() {
		if (connection == null) {
			return;
		}
		
		try {
			if (resultSet != null) {
				resultSet.close();
				resultSet = null;
			}
			
			if (preparedStatement != null) {
				preparedStatement.close();
				preparedStatement = null;
			}
			
			if (connection != null) {
				connection.close();
				connection = null;
			}
			
		} catch(Exception e) {
			e.printStackTrace();
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
	<%
		connection = getConnection(); // getConnection()이 SQLException을 던진다. 
		String id = request.getParameter("id");
		
		preparedStatement = connection.prepareStatement("SELECT name, class, tel FROM MEMBER2 where id=?"); 
		preparedStatement.setString(1, id); 
		resultSet = preparedStatement.executeQuery();
		
		if(resultSet.next()) {
	%>
			<form method="post" action="updateProcess.jsp">
				아이디 : <input type="text" name="id" readonly value="<%= id %>" > <br>
				이름 : <input type="text" name="name" value="<%= resultSet.getString("name") %>" > <br>
				회원등급 : <input type="text" name="mclass" value="<%= resultSet.getString("class") %>" > <br>
				전화번호 : <input type="text" name="tel" value="<%= resultSet.getString("tel") %>" > <br>
				<input type="submit" value="수정"> <br>
				<a href="viewMember.jsp">목록보기</a>
			</form>		
	<%
		} else {
	%>
			<font color="red">아이디가 없습니다.</font>
			<a href="viewMember.jsp">목록보기</a> 	
	<%
			releaseConnection();
		}
	%>
	
	</table>
</body>
</html>