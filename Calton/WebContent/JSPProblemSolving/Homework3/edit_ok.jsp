<%@page import="magic.board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="board" class="magic.board.BoardBean"></jsp:useBean>
<jsp:setProperty property="*" name="board"/>
<%
	String pageNum = request.getParameter("pageNum");
	int b_id = Integer.parseInt(request.getParameter("b_id"));
	
	board.setB_id(b_id);
	BoardDBBean db = BoardDBBean.getInstance();
	int re = db.editBoard(board);
	
	if(re == 1){
		response.sendRedirect("list.jsp?pageNum="+pageNum);
	}else if(re == 0){
		%>
			<script type="text/javascript">
				alert("��й�ȣ�� ���� �ʽ��ϴ�.");
				history.go(-1);
			</script>
		<%
	}else if(re == -1){
		%>
			<script type="text/javascript">
				alert("������ �����Ͽ����ϴ�.");
				history.go(-1);
			</script>
		<%
	}
%>