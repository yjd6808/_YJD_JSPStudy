<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	
</style>
</head>
<body>
	<h1>���� �Է� ��</h1>
	<form method="post" action="itemWriteResult.jsp">
		<table>
			<tr>
				<td>��ǰ��</td>
				<td><input type="text" size="40" name="name"></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input type="text" size="40" name="price"></td>
			</tr>
			<tr>
				<td>����</td>
				<td><textarea cols="80" rows="10" name="description"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="����">
					<input type="reset" value="���">
				</td>
			</tr>
		</table>
		
	</form>
</body>
</html>