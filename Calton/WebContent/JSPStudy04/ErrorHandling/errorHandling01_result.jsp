<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page errorPage="errorHandling01_errorCatch.jsp" %>
<%!
   String s_name;
   int age;
%>
<%
   request.setCharacterEncoding("euc-kr");
   s_name = request.getParameter("name");
   age = Integer.parseInt(request.getParameter("age"));
   
%>
<h3> ȸ�� ���� ���</h3>
����� �̸��� <%= s_name %>�Դϴ�. <br>
����� ���̴� <%= age %>�Դϴ�. <br>