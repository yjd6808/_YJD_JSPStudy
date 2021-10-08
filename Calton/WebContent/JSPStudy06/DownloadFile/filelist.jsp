<%@page import="myUtil.HanConv"%>
<%@ page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	File dir = new File(getServletContext().getRealPath("upload")); // upload 경로를 얻는다.
	File[] directoryListing = dir.listFiles();
	if (directoryListing != null) {
		for (File child : directoryListing) {	// upload 디렉토리 내부의 파일을 순회한다. 
			if (child.isFile()) {	// 파일인 경우에만 보이도록 한다.
					// 경로를 URL 인코딩하여 넘겨준다.
				%>
					<a href="<%= "download.jsp?filepath=" + HanConv.toUrlEncoding(child.getAbsolutePath())  %>"><%= child.getName() %></a> <br>
				<%	    		
			}
		}
	} else {
	 
	}
%> 
</body>
</html>