<%@page import="myUtil.HanConv"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
 <%!Connection connection = null;			// 데이터베이스 연결 객체
	Statement stmt = null;					// 데이터베이스에게 쿼리작업을 하기위한 객체
	ResultSet rs = null;					// 쿼리 실행 결과를 받아보기 위한 객체
	
	// 오라클 DB에 연결해주는 함수
	public boolean connectOracle(JspWriter out) throws Exception {
		// JVM에 클래스를 로딩하겠다.
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			String url  = "jdbc:oracle:thin:@localhost:1521:XE";
			String user	= "scott";
			String pw	= "tiger";
			
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
	
	// 연결을 모두 종료하고 정리해주는 함수
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
	
	// 쿼리 실행을 위해 DB에 접속하자.
	if (connectOracle(out)) {
		stmt = connection.createStatement();
		
		// 삽입 쿼리 실행
		int result = stmt.executeUpdate(
		String.format(
			"insert into member2 values('%s', '%s', '%s', '%s', '%s-%s-%s')", 
			id, pw, name, mclass, phone1, phone2, phone3
		 )
	);
		if (result > 0) {
	out.print("삽입이 성공적으로 이뤄졌습니다!<br>");
		} else {
	out.print("삽입이 실패하였습니다!<br>");
		}
		
		// 사용을 다했으니 정리하자.
		finalizeConnection();
	} else {
		// 연결에 실패한 경우 폼 화면으로 다시 돌리자.
		response.sendRedirect("insertForm.html");
	}
%>

<!-- 삽입 결과를 확인하기 위해 selectOracle.jsp에서 구성했던 것을 그대로 가져왔다.-->
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
				rs = stmt.executeQuery("select * from member2");
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
<a href="insertForm.html">로그인 페이지로 이동</a>
</body>
</html>