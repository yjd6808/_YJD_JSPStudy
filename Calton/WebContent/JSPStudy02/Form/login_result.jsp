<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

<script src="./lib/jquery-3.5.1.js"></script>
<script>
var val = 3;
function gotoHome() {
	setInterval("changeTextWithMessage()", 900, "실패!");
	setTimeout("gotoHomeDirect()", 3000);
}


function gotoSuccess() {
	setInterval("changeTextWithMessage()", 900, "성공!");
	setTimeout("gotoSuccessDirect()", 3000);
}

function changeTextWithMessage(arg) {
	document
	$("#success_tag").text(arg + --val);
}

function gotoSuccessDirect() {
	window.location.href = "http://localhost:8086/Recal/JSP02/login_result_success.jsp";
}

function gotoHomeDirect() {
	window.location.href = "http://localhost:8086/Recal/JSP02/login_main.jsp";
}
</script>
</head>

<body>
	<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	out.print(id); 		out.print("<br>");
	out.print(pass); 	out.print("<br>");
	
	if (id.equals("정도") && pass.equals("1234")) {
		%>
		<p id="success_tag">메시지</p>
		<script>
		gotoSuccess();
		</script>
		<%
	}
	else {
		%>
		<p id="success_tag">메시지</p>
		<script>
		gotoHome();
		</script>
		<%
	}
	%>
	
	
</body>
</html>