<%@page import="java.util.Enumeration"%>
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
		<h3>[세션 값을 얻어오는 예제]</h3>
	</center>
	
	<%
		int idx = 0;
		Enumeration<String> attributeNames = session.getAttributeNames();
		while (attributeNames.hasMoreElements()) {
			String attributeName = attributeNames.nextElement();
			Object attribute = session.getAttribute(attributeName);
			
			if (attribute != null) {
				if (attribute instanceof String) {
					out.print(String.format("설정된 세션값 [%d]=> %s : %s", ++idx, attributeName, attribute));
				} else if (attribute instanceof Integer) {
					out.print(String.format("설정된 세션값 [%d]=> %s : %s", ++idx, attributeName, attribute));
				} else {
					out.print(String.format("설정된 세션값 [%d]=> %s : ", ++idx, attributeName) + attribute);
				}
				out.print("<br>");
			}
		}
	%>
</body>
</html>