<%@page import="java.util.stream.Collectors"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
Cookie lastDate = null; // 객체기때문에 초기값 null 설정
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
   msg="처음 방문입니다.....";
   lastDate = new Cookie("last-connection-date2", newValue); // 날짜와 시간정보있음.
   lastDate.setMaxAge(365*24*60*60);
   lastDate.setPath("/");
   response.addCookie(lastDate);  // 쿠키객체 설정, 웹브라우저에 쿠키정보를 추가전송한다.
} else {
   long conv = Long.parseLong(lastDate.getValue());   // lastdate.getValue는 string타입이기때문에. 
   msg="당신의 마지막 방문: "+ new Date(conv);
   lastDate.setValue(newValue);
   response.addCookie(lastDate);
}

out.print(msg);
out.print("<br><hr>");
%>
