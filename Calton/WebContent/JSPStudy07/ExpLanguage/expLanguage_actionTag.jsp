<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	pageContext.setAttribute("input", "");
	pageContext.setAttribute("input2", "aaa");
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>[�׼� �±׿� ǥ�� ���]</h3>
	<jsp:useBean id="board" class="magic.board.BoardBean"></jsp:useBean> <br>
	<jsp:setProperty property="b_name" name="board" value="�ȳ��ϼ���"/>
	
	${ board.b_name } <br>	
	 
</body>
</html>