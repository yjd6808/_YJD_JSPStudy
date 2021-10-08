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
		// JVM�� Ŭ������ �ε��ϰڴ�.
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		String url  = "jdbc:oracle:thin:@localhost:1521:XE";
		String user	= "scott";
		String pw	= "tiger";
		
		// JDBC�� 
		connection = DriverManager.getConnection(url, user, pw);
		out.print("������ ���������� �̷������ϴ�. ^_^ <br>");	
		
	} catch (SQLException e) {
		
		// ����Ʈ���̽��� ���ڿ��� ����.
		StringWriter sw = new StringWriter();
		PrintWriter pw = new PrintWriter(sw);
		e.printStackTrace(pw);
		String sStackTrace = sw.toString();
		
		out.print("���ῡ �����Ͽ����ϴ�. <br><br>");
		out.print(e.getMessage() + "<br>");
		out.print(sStackTrace + "<br>");
		
	} finally {
		
		// ������ ��� ���������� �̷��� ��� ������ �����ϰڴ�.
		if (connection != null) {
			connection.close();
		}
	}
	
	
	%>
</body>
</html>