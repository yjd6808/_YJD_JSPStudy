<%@page import="magic.member.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="mb" class="magic.member.MemberBean"></jsp:useBean>
<jsp:setProperty property="*" name="mb"/>
<%
	MemberDBBean manager = MemberDBBean.getInstance();

	if (manager.updateMember(mb) == 1) {
		
		%>
		<script type="text/javascript">
			alert("ȸ�������� ���������� �����Ǿ����ϴ�.");
		</script>
		<%
		response.sendRedirect("login.jsp");
	} else {
		%>
		<script type="text/javascript">
			alert("ȸ������ ������ �����Ͽ����ϴ�.");
		</script>
		<%
		response.sendRedirect("login.jsp");
	}
%>