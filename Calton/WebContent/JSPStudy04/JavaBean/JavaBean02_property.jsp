<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!-- 
	jsp 패키지의 HelloBean 클래스 빈 생성
	범위는 이 페이지에 한해서 
-->
<jsp:useBean id="myBean" class="magic.member.HelloBean" scope="page"></jsp:useBean>
*. 빈 생성 후 저장된 값 출력하기										<br><hr>
이름 : <jsp:getProperty property="name" name="myBean"/>			<br>
나이 : <jsp:getProperty property="age" name="myBean"/>			<br><hr>


*. 값을 변경 후 저장된 값 출력하기										<br><hr>
<jsp:setProperty property="name" name="myBean" value="윤정도"/>  
<jsp:setProperty property="age" name="myBean" value="27"/>	
이름 : <jsp:getProperty property="name" name="myBean"/>			<br>
나이 : <jsp:getProperty property="age" name="myBean"/>			<br><hr>