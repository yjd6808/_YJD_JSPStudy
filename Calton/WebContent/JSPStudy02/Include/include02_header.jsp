<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<center>
	<h3>헤더입니다.</h3>
</center>

<%!
int connectionCount = 0;
%>

<p>
이 사이트의 방문은 <%=++connectionCount%> 번째 방문입니다.
</p>

<hr>
