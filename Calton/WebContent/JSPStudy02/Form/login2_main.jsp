<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


	<center>
	<form method="post" action="login2_result.jsp">
		<table>
			<tr>
				<td>아이디:</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>비밀번호:</td>
				<td><input type="password" name="id"></td>
			</tr>
			<tr>
				<td><input type="submit" value="로그인"></td>
				<td><input type="reset" value="취소"></td>
			</tr>
		</table>
	</form>
	</center>
</body>
</html>