<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!-- 
	jsp ��Ű���� HelloBean Ŭ���� �� ����
	������ �� �������� ���ؼ� 
-->
<jsp:useBean id="myBean" class="magic.member.HelloBean" scope="page"></jsp:useBean>
*. �� ���� �� ����� �� ����ϱ�										<br><hr>
�̸� : <jsp:getProperty property="name" name="myBean"/>			<br>
���� : <jsp:getProperty property="age" name="myBean"/>			<br><hr>


*. ���� ���� �� ����� �� ����ϱ�										<br><hr>
<jsp:setProperty property="name" name="myBean" value="������"/>  
<jsp:setProperty property="age" name="myBean" value="27"/>	
�̸� : <jsp:getProperty property="name" name="myBean"/>			<br>
���� : <jsp:getProperty property="age" name="myBean"/>			<br><hr>