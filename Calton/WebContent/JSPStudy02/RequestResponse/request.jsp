<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
������ Ŭ���̾�Ʈ�� ip :<%= request.getRemoteAddr()%><br>
������ �̸� : <%= request.getServerName() %><br>
��û���: <%= request.getMethod() %>	<br>
��������: <%= request.getProtocol() %>	<br>
��û�� URL: <%= request.getRequestURL()%><br>
��û�� URI: <%= request.getRequestURI() %><br>


