<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="membean" class="magic.member.MemberBean"></jsp:useBean>
<jsp:setProperty property="*" name="membean"/> <!-- setProperty�� *�� �־��ָ� request�� ��� �����͸� �־��ش�. -->
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
   ����� �Է��� �����Դϴ�.
   <hr> ���̵�:
   <jsp:getProperty property="id" name="membean"/>
   <hr> �̸�:
   <jsp:getProperty property="name" name="membean"/>
   <br> ȸ������:
   <%
      if(membean.getMem_name() == ""){
         out.print("�Ϲ�ȸ��");
      } else {
         out.print("������");
      }
   %>
   <jsp:getProperty property="phone1" name="membean"/>
   <jsp:getProperty property="phone2" name="membean"/>
   <jsp:getProperty property="phone3" name="membean"/>
</body>
</html>