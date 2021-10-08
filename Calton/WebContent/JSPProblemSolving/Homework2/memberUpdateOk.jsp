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
			alert("회원정보가 성공적으로 수정되었습니다.");
		</script>
		<%
		response.sendRedirect("login.jsp");
	} else {
		%>
		<script type="text/javascript">
			alert("회원정보 수정에 실패하였습니다.");
		</script>
		<%
		response.sendRedirect("login.jsp");
	}
%>