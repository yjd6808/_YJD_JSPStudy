<%@page import="java.io.File"%>
<%@page import="magic.board.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String pageNum = request.getParameter("pageNum");
	int b_id = Integer.parseInt(request.getParameter("b_id"));
	String b_pwd = request.getParameter("b_pwd");
	
	BoardDBBean db = BoardDBBean.getInstance();
	int re = db.deleteBoard(b_id, b_pwd);
	
	BoardBean board = db.getBoard(b_id, false);
	String up="D:\\workspace12\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\magicWebApp\\upload\\";
	String fname = board.getB_fname();
	
	if(re == 1){
		response.sendRedirect("list.jsp?pageNum="+pageNum);
		
		if(fname != null){
			File file=new File(up+fname);
			file.delete();
		}
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