<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!-- jsp ��Ű���� HelloBean Ŭ���� �� ���� ������ �� �������� ���ؼ�  -->
<jsp:useBean id="myBean" class="magic.member.HelloBean" scope="page"></jsp:useBean>

��ũ��Ʈ���� ǥ������ ��� 		<br>
*. �� ���� �� ����� �� ����ϱ� 	<br><hr>

<% myBean.setName("������"); %>
<% myBean.setAge(27); %>
<% myBean.setMan(true); %>

�̸� : <%= myBean.getName() %>		 <br>
���� : <%= myBean.getAge() %>			 <br>
���� : <%= myBean.isMan() %>			 <br><hr>


getProperty�±׿� setProperty �±׸� ���	<br>
*. ���� ���� �� ����� �� ����ϱ�				<br><hr>
<jsp:setProperty property="name" name="myBean" value="�ڳ���"/>
<jsp:setProperty property="age" name="myBean" value="45"/>
<jsp:setProperty property="man" name="myBean" value="false"/>

�̸� : <jsp:getProperty property="name" name="myBean"/>	<br>
���� : <jsp:getProperty property="age" name="myBean"/>	<br>
���� : <jsp:getProperty property="age" name="myBean"/>	<br><hr>