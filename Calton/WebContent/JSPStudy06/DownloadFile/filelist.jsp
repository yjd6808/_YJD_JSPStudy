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
	File dir = new File(getServletContext().getRealPath("upload")); // upload ��θ� ��´�.
	File[] directoryListing = dir.listFiles();
	if (directoryListing != null) {
		for (File child : directoryListing) {	// upload ���丮 ������ ������ ��ȸ�Ѵ�. 
			if (child.isFile()) {	// ������ ��쿡�� ���̵��� �Ѵ�.
					// ��θ� URL ���ڵ��Ͽ� �Ѱ��ش�.
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