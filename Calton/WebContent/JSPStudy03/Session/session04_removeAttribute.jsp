<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Enumeration"%>
<%@page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h3>[설정된 세션값을 삭제하는 예제]</h3>
	</center>
	
	<%! 
		void printAllAttribute(JspWriter out, HttpSession session) throws IOException {
			Enumeration<String> attributeNames = session.getAttributeNames();
			while (attributeNames.hasMoreElements()) {
				String attributeName = attributeNames.nextElement();
				out.print(attributeName + " : " + session.getAttribute(attributeName));
				out.print("<br>");
			}
		}	
	%>
	<%
		session.setAttribute("value1", "저는 세션에 저장된 첫번째 값이에요.");
		session.setAttribute("value2", "난 두번째 값이다.");
		session.setAttribute("value3", 3);
	%>
	세션에 3가지 정보를 추가했습니다~! <br><hr>
	세션에 저장된 값들의 목록을 출력합니다! <br>
	<% printAllAttribute(out, session); %>
	<br><hr>
	<%
		session.removeAttribute("value1");
		session.removeAttribute("value2");
		session.removeAttribute("value3");
	%>
	아까 추가해준 3가지 정보를 삭제하였습니다. <br><hr>
	세션에 저장된 값들의 목록을 출력합니다! <br>
	<% printAllAttribute(out, session); %>
	ㅋㅋ 아무것도 안나오죠? 삭제했기 때문입니다! <br><hr>
</body>
</html>