<%@page import="magic.board.*"%>
<%@page import="com.jspsmart.upload.File"%>
<%@page import="com.jspsmart.upload.SmartUpload"%>
<%@page import="java.net.InetAddress"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="magic.board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%--
<jsp:useBean id="board" class="magic.board.BoardBean"></jsp:useBean>
<jsp:setProperty property="*" name="board"/>
 --%>
<%
	SmartUpload upload=new SmartUpload();
	upload.initialize(pageContext);
	upload.upload();
	
	String fName=null;
	int fSize=0;
	
	File file=upload.getFiles().getFile(0);
	
	if(!file.isMissing()){
		fName = file.getFileName();
		fSize = file.getSize();
		file.saveAs("/upload/"+file.getFileName());
	}

	BoardBean board=new BoardBean();
	
	board.setB_id(Integer.parseInt(upload.getRequest().getParameter("b_id")));
	board.setB_ref(Integer.parseInt(upload.getRequest().getParameter("b_ref")));
	board.setB_step(Integer.parseInt(upload.getRequest().getParameter("b_step")));
	board.setB_level(Integer.parseInt(upload.getRequest().getParameter("b_level")));
	board.setB_name(upload.getRequest().getParameter("b_name"));
	board.setB_email(upload.getRequest().getParameter("b_email"));
	board.setB_title(upload.getRequest().getParameter("b_title"));
	board.setB_content(upload.getRequest().getParameter("b_content"));
	board.setB_pwd(upload.getRequest().getParameter("b_pwd"));
	board.setB_fname(fName);
	board.setB_fsize(fSize);
	board.setB_date(new Timestamp(System.currentTimeMillis()));

	InetAddress address = InetAddress.getLocalHost();
	String ip = address.getHostAddress();
	
	//board.setB_ip(request.getRemoteAddr());
	board.setB_ip(ip);

	BoardDBBean db = BoardDBBean.getInstance();
	if(db.insertBoard(board) == 1){
		response.sendRedirect("list.jsp");
	}else{
		response.sendRedirect("write.jsp");
	}
%>