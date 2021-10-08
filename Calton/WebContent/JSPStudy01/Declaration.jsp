<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%--------------------------------------------------------
						기본 문법
						
	<%! 선언부 	%>  -> 	전역변수, 함수
	<% 	스크립릿 	%> 	-> 	코딩, 지역변수
	<%=	출력부 	%>  ->	문자열, 변수값, 함수리턴값 출력
	<%-- 주석 --	%> 
     --------------------------------------------------------%>

	<%--------------------------------------------------------
						변수 사용하기 
      --------------------------------------------------------%>
	<cetner>
	<h3>변수 사용하기</h3>
	</cetner>
	<%-- 변수 선언, 메소드 태그 --%>
	<%!int data = 50;%>

	<%-- 자바 소스 태그--%>
	<%
		out.println("Value of the variable is : " + data);
	%>

	<hr style="border: 2px solid black">

	<%--------------------------------------------------------
						함수 사용하기 
      --------------------------------------------------------%>
	<cetner>
	<h3>함수 사용하기</h3>
	</cetner>
	<%!int sum(int a, int b) {
		return a + b;
	}

	String getString(String str) {
		return str;
	}%>
	
	<%
		out.print(String.format("%d + %d = %d", 10, 20, sum(10, 20)));
	%>
	<hr style="border: 2px solid black">

	<%--------------------------------------------------------
						함수, 변수 사용하기
      --------------------------------------------------------%>
	<cetner>
	<h3>함수, 변수 사용하기</h3>
	</cetner>
	<%!String str = "안녕하세요";
		int a = 5, b = -5;
		
		public int abs(int n) {
			return n < 0 ? n = -n : n;
	}%>
	<%
		out.print(str + "<br>");
		out.print(a + "의 절대값은 " + abs(a) + "<br>");
		out.print(b + "의 절대값은 " + abs(b) + "<br>");
	%>

	<hr style="border: 2px solid black">
	<%--------------------------------------------------------
					스크립트릿 지역변수 사용
     --------------------------------------------------------%>
	<cetner>
	<h3>스크립트릿 지역변수 사용</h3>
	</cetner>
	<%
		int a = 1;
		int b = 2;
		out.print(String.format("%d + %d = %d", a, b, a + b));
	%>
	<hr style="border: 2px solid black">

	<%--------------------------------------------------------
					스크립트릿 반복문 + out 출력 조합
     --------------------------------------------------------%>
	<cetner>
	<h3>스크립트릿 반복문 + out 출력 조합</h3>
	</cetner>
	<%
		for (int i = 0; i < 10; i++) {
		if (i % 2 == 0) {
			out.print(i + "<br>");
		}
	}
	%>

	<%--------------------------------------------------------
					스크립트릿 반복문 + 태그 조합
     --------------------------------------------------------%>
	<cetner>
	<h3>스크립트릿 반복문 + 태그 조합</h3>
	</cetner>
	<%
		for (int i = 0; i < 5; i++) {
	%>
				안녕하세요<br>
	<%
		}
	%>
	<hr style="border: 2px solid black">

	<%--------------------------------------------------------
					  클래스 임포트 및 날짜 출력
     --------------------------------------------------------%>
	<cetner>
	<h3>클래스 임포트 및 날짜 출력</h3>
	</cetner>
	<%
		// 현재 날짜 출력
	Date d = new Date();
	String strDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(d);
	out.print(strDate);
	%>
	<hr style="border: 2px solid black">
	<%--------------------------------------------------------
					           표현문으로 날짜 출력
     --------------------------------------------------------%>
	<cetner>
	<h3>표현문으로 날짜 출력</h3>
	</cetner>
	<p style="color: black;">
		<%=Calendar.getInstance().getTime()%>
	</p>
	<hr style="border: 2px solid black">
</body>
</html>