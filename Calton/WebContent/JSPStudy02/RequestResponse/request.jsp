<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
접속한 클라이언트의 ip :<%= request.getRemoteAddr()%><br>
서버의 이름 : <%= request.getServerName() %><br>
요청방식: <%= request.getMethod() %>	<br>
프로토콜: <%= request.getProtocol() %>	<br>
요청한 URL: <%= request.getRequestURL()%><br>
요청한 URI: <%= request.getRequestURI() %><br>


