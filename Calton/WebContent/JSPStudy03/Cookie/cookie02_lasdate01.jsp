<%@page import="java.util.stream.Collectors"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
Cookie lastDate = null; // ��ü�⶧���� �ʱⰪ null ����
String msg="";
boolean found=false;
String newValue = "" + System.currentTimeMillis();
Cookie[] cookies = request.getCookies();

for(int i=0; i<cookies.length; i++){
   lastDate = cookies[i];
   
   if(lastDate.getName().equals("last-connection-date2")){
      found=true;
      break;
   } 
}

if(!found){
   msg="ó�� �湮�Դϴ�.....";
   lastDate = new Cookie("last-connection-date2", newValue); // ��¥�� �ð���������.
   lastDate.setMaxAge(365*24*60*60);
   lastDate.setPath("/");
   response.addCookie(lastDate);  // ��Ű��ü ����, ���������� ��Ű������ �߰������Ѵ�.
} else {
   long conv = Long.parseLong(lastDate.getValue());   // lastdate.getValue�� stringŸ���̱⶧����. 
   msg="����� ������ �湮: "+ new Date(conv);
   lastDate.setValue(newValue);
   response.addCookie(lastDate);
}

out.print(msg);
out.print("<br><hr>");
%>
