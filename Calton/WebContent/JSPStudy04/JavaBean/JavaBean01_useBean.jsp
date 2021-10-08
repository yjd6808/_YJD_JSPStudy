<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!-- jsp 패키지의 HelloBean 클래스 빈 생성 범위는 이 페이지에 한해서  -->
<jsp:useBean id="myBean" class="magic.member.HelloBean" scope="page"></jsp:useBean>

스크립트릿과 표현문을 사용 		<br>
*. 빈 생성 후 저장된 값 출력하기 	<br><hr>

<% myBean.setName("윤정도"); %>
<% myBean.setAge(27); %>
<% myBean.setMan(true); %>

이름 : <%= myBean.getName() %>		 <br>
나이 : <%= myBean.getAge() %>			 <br>
성별 : <%= myBean.isMan() %>			 <br><hr>


getProperty태그와 setProperty 태그를 사용	<br>
*. 값을 변경 후 저장된 값 출력하기				<br><hr>
<jsp:setProperty property="name" name="myBean" value="박남길"/>
<jsp:setProperty property="age" name="myBean" value="45"/>
<jsp:setProperty property="man" name="myBean" value="false"/>

이름 : <jsp:getProperty property="name" name="myBean"/>	<br>
나이 : <jsp:getProperty property="age" name="myBean"/>	<br>
성별 : <jsp:getProperty property="age" name="myBean"/>	<br><hr>