<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
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
	
	public String toKorean(String str) {
		if (str == null || str.length() <= 0) {
			return "str is null";
		}
		
		try {
			return new String(str.getBytes("8859_1"), "euc_kr");
		} catch (Exception e) {
			return "euc_kr convert to fail";
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
	<%
		 String id = request.getParameter("id");
		 String name = request.getParameter("name");
		 String mclass = request.getParameter("mclass");
		 String tel = request.getParameter("tel");
		 
		 try {
			 connection = getConnection();
			 preparedStatement = connection.prepareStatement("update member2 set name=?, class=?, tel=? where id=?");
			 
			 // ? 순서에 맞게 넣어준다.
			 preparedStatement.setString(1, toKorean(name)); // 한글처리도 해주자_  					
			 preparedStatement.setInt(2, Integer.parseInt(mclass));  
			 preparedStatement.setString(3, tel);
			 preparedStatement.setString(4, id);
			 
			 // 정상적으로 업데이트되면 1을 받는다.
			 if(preparedStatement.executeUpdate() == 1) {
				 
	 %>
 				<%= id %>의 정보가 수정 되었습니다. <br>
 				[<a href="mainView.jsp">목록보기</a>]
	 <%
			 } else{
				 out.print("업데이트 쿼리 수행에 실패하였습니다.. ㅠㅠ");
			 }
			 
			 releaseConnection();
			 
		 } catch(SQLException e){
			 e.printStackTrace();
		 }
	%>
</body>
</html>





