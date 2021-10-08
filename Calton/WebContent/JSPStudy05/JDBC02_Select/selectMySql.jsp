<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
	Connection connection = null;			// �����ͺ��̽� ���� ��ü
	Statement stmt = null;					// �����ͺ��̽����� �����۾��� �ϱ����� ��ü
	ResultSet rs = null;					// ���� ���� ����� �޾ƺ��� ���� ��ü
	
	public boolean connectOracle(JspWriter out) throws Exception {
		// JVM�� Ŭ������ �ε��ϰڴ�.
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			String url  = "jdbc:mysql://localhost:3307/jspdb";
			String user	= "root";
			String pw	= "1234";
			
			// JDBC�� ������ ��û�Ѵ�.
			connection = DriverManager.getConnection(url, user, pw);
			return true;
		}
		catch (SQLException e) {
			// ����Ʈ���̽��� ���ڿ��� ����.
			StringWriter sw = new StringWriter();
			PrintWriter pw = new PrintWriter(sw);
			e.printStackTrace(pw);
			String sStackTrace = sw.toString();
			
			out.print("���ῡ �����Ͽ����ϴ�. <br><br>");
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
		<td>���̵�</td>
		<td>�̸�</td>
		<td>���</td>
		<td>��ȭ��ȣ</td>
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
						<td><%= rs.getInt("class") == 1 ? "�Ϲ�ȸ��" : "������" %></td>
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