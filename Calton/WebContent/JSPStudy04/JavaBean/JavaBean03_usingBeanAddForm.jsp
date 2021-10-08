<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="membean" class="magic.member.MemberBean"></jsp:useBean>
<jsp:setProperty property="*" name="membean"/> <!-- setProperty에 *을 넣어주면 request에 담긴 데이터를 넣어준다. -->
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
   당신이 입력한 정보입니다.
   <hr> 아이디:
   <jsp:getProperty property="id" name="membean"/>
   <hr> 이름:
   <jsp:getProperty property="name" name="membean"/>
   <br> 회원구분:
   <%
      if(membean.getMem_name() == ""){
         out.print("일반회원");
      } else {
         out.print("교수님");
      }
   %>
   <jsp:getProperty property="phone1" name="membean"/>
   <jsp:getProperty property="phone2" name="membean"/>
   <jsp:getProperty property="phone3" name="membean"/>
</body>
</html>