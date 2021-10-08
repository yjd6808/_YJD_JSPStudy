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
	<h1>정보 입력 폼</h1>
	<form method="post" action="itemWriteResult.jsp">
		<table>
			<tr>
				<td>상품명</td>
				<td><input type="text" size="40" name="name"></td>
			</tr>
			<tr>
				<td>가격</td>
				<td><input type="text" size="40" name="price"></td>
			</tr>
			<tr>
				<td>설명</td>
				<td><textarea cols="80" rows="10" name="description"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="전송">
					<input type="reset" value="취소">
				</td>
			</tr>
		</table>
		
	</form>
</body>
</html>