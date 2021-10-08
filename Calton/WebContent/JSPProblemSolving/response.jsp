<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
</script>
</head>
<body>
	<% 
		response.setIntHeader("refresh", 5);
		Date date = Calendar.getInstance().getTime();  
		SimpleDateFormat sm = new SimpleDateFormat("hh:mm:ss a");
		String today =sm.format(date); 
	%>
	현재 시간은 <%= today %> <br>
	<a style="font-size: 16px" href="./response_data.jsp">구글 홈페이지로 이동</a>
</body>
</html>