<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	//if(!session.getAttribute("Member").equals("yes")){
	if(session.getAttribute("Member") == null){
		response.sendRedirect("login.jsp");
	}
%>
<%
	String uid = (String)session.getAttribute("uid");
	String name = (String)session.getAttribute("name");
%>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="1" align="center">
		<form method="post" action="logOut.jsp">
			<tr>
				<td>
					�ȳ��ϼ���. <%= name %>(<%= uid %>)��
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="�α׾ƿ�">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="button" value="ȸ����������" onclick="javascript:window.location='memberUpdate.jsp'">
				</td>
			</tr>
		</form>
	</table>
</body>
</html>