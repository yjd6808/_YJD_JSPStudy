<%@page import="myUtil.HanConv"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
 <%!Connection connection = null;			// �����ͺ��̽� ���� ��ü
	Statement stmt = null;					// �����ͺ��̽����� �����۾��� �ϱ����� ��ü
	ResultSet rs = null;					// ���� ���� ����� �޾ƺ��� ���� ��ü
	
	// ����Ŭ DB�� �������ִ� �Լ�
	public boolean connectOracle(JspWriter out) throws Exception {
		// JVM�� Ŭ������ �ε��ϰڴ�.
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			String url  = "jdbc:oracle:thin:@localhost:1521:XE";
			String user	= "scott";
			String pw	= "tiger";
			
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
	
	// ������ ��� �����ϰ� �������ִ� �Լ�
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
	}%>


<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = HanConv.toKor(request.getParameter("name"));
	String mclass = request.getParameter("mclass");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	
	// ���� ������ ���� DB�� ��������.
	if (connectOracle(out)) {
		stmt = connection.createStatement();
		
		// ���� ���� ����
		int result = stmt.executeUpdate(
		String.format(
			"insert into member2 values('%s', '%s', '%s', '%s', '%s-%s-%s')", 
			id, pw, name, mclass, phone1, phone2, phone3
		 )
	);
		if (result > 0) {
	out.print("������ ���������� �̷������ϴ�!<br>");
		} else {
	out.print("������ �����Ͽ����ϴ�!<br>");
		}
		
		// ����� �������� ��������.
		finalizeConnection();
	} else {
		// ���ῡ ������ ��� �� ȭ������ �ٽ� ������.
		response.sendRedirect("insertForm.html");
	}
%>

<!-- ���� ����� Ȯ���ϱ� ���� selectOracle.jsp���� �����ߴ� ���� �״�� �����Դ�.-->
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
				rs = stmt.executeQuery("select * from member2");
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
<a href="insertForm.html">�α��� �������� �̵�</a>
</body>
</html>