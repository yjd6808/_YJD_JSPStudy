<%@page import="magic.member.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%

MemberDBBean manager = MemberDBBean.getInstance();
MemberBean mb = manager.getMember(session.getAttribute("uid").toString());

if (mb == null) {
	%>
	<script type="text/javascript">
		alert("ȸ�� ������ �����ϴ�. �α��� �������� �̵��մϴ�.");
	</script>
	<%
	response.sendRedirect("login.jsp");
	
}

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<script type="text/javascript" src="script.js" charset="utf-8" ></script>
</head>
<body>
	<table border="1">
		<form name="update_frm" method="post" action="memberUpdateOk.jsp">
			<tr>
				<td colspan="2" align="center">
					<h1>ȸ�� ���� ��û</h1>
					'*' ǥ�� �׸��� �ʼ� �Է� �׸��Դϴ�.
				</td>
			</tr>
			<tr>
				<td width="80">
					User ID
				</td>
				<td>
					<input type="text" size="20" name="mem_uid" value="<%=mb.getMem_uid() %>" readonly="readonly">
				</td>
			</tr>
			<tr>
				<td width="80">
					��ȣ
				</td>
				<td>
					<input type="password" size="20" name="mem_pwd">
				</td>
			</tr>
			<tr>
				<td width="80">
					��ȣ Ȯ��
				</td>
				<td>
					<input type="password" size="20" name="pwd_check">
				</td>
			</tr>
			<tr>
				<td width="80">
					��   ��
				</td>
				<td>
					<input type="text" size="20" name="mem_name" value="<%=mb.getMem_name() %>">
				</td>
			</tr>
			<tr>
				<td width="80">
					E-mail
				</td>
				<td>
					<input type="text" size="30" name="mem_email" value="<%=mb.getMem_email() %>">
				</td>
			</tr>
			<tr>
				<td width="80">
					��   ��
				</td>
				<td>
					<input type="text" size="40" name="mem_address">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="����" onclick="update_ok()">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="reset" value="�ٽ��Է�">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="button" value="��������" onclick="javascript:window.location='main.jsp'">
				</td>
			</tr>
		</form>
	</table>
</body>
</html>








