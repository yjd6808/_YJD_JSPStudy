<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isErrorPage="true" %>

<% response.setStatus(HttpServletResponse.SC_OK); %>
<%= exception.getMessage() %>
<!-- ���� �޽����� ���´�. -->
