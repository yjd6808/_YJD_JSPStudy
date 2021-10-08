<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="magic.board.BoardBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="magic.board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String pageNum = request.getParameter("pageNum");

	System.out.println("@@@### pageNum ===>"+pageNum);
	
	if(pageNum == null || pageNum == "null"){
		pageNum="1";
	}
	
	BoardDBBean db = BoardDBBean.getInstance();
	ArrayList<BoardBean> boardList = db.listBoard(pageNum);
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	
	int b_id=0, b_hit=0, b_level=0, b_fsize=0;
	String b_name, b_email, b_title, b_content, b_fname;
	Timestamp b_date;
%>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1>�Խ��ǿ� ��ϵ� �� ��� ����</h1>
		<table width="600">
			<tr>
				<td align="right">
					<a href="write.jsp?pageNum=<%= pageNum %>">�� �� ��</a>
				</td>
			</tr>
		</table>
		<table width="800" border="1" cellspacing="0" >
			<tr height="25">
				<td width="40" align="center">��ȣ</td>
				<td width="80" align="center">÷������</td>
				<td width="450" align="center">������</td>
				<td width="120" align="center">�ۼ���</td>
				<td width="130" align="center">�ۼ���</td>
				<td width="60" align="center">��ȸ��</td>
			</tr>
			<%
				for(int i=0; i<boardList.size(); i++){
					BoardBean board = boardList.get(i);
					b_id = board.getB_id();
					b_name = board.getB_name();
					b_email = board.getB_email();
					b_title = board.getB_title();
					b_content = board.getB_content();
					b_date = board.getB_date();
					b_hit = board.getB_hit();
					b_level = board.getB_level();
					b_fname = board.getB_fname();
					b_fsize = board.getB_fsize();
			%>
					<tr height="25" bgcolor="#f7f7f7" 
									onmouseover="this.style.backgroundColor='#eeeeef'" 
									onmouseout="this.style.backgroundColor='#f7f7f7'">
						<td align="center">
							<%= b_id %>
						</td>
						<td>
							<%
								if(b_fsize >0){
							%>
									<img src="../images/zip.gif" alt="<% out.print(b_name+"("+b_fsize/1024+")"); %>KByte">							
							<%
								}
							%>
						</td>
						<td>
							<%
								if(b_level > 0){
									for(int j=0; j<b_level; j++){
										%>
											&nbsp;
										<%
									}
									%>
										<img src="../images/AnswerLine.gif" width="16" height="16">
									<%
								}
							%>
							<a href="show.jsp?b_id=<%= b_id %>&pageNum=<%= pageNum %>"><%= b_title %></a>
						</td>
						<td align="center">
							<a href="mailto:<%= b_email %>"><%= b_name %></a>
						</td>
						<td align="center">
							<%= sdf.format(b_date)%>
						</td>
						<td align="right">
							<%= b_hit %>
						</td>
					</tr>
			<%
				}
			%>
		</table>
	</center>
	<center>
		<%= BoardBean.pageNumer(4) %>
	</center>
</body>
</html>















