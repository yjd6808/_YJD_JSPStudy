<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isErrorPage="true" %>

<% response.setStatus(HttpServletResponse.SC_OK); %>
<%= exception.getMessage() %>
<!-- 오류 메시지가 나온다. -->
