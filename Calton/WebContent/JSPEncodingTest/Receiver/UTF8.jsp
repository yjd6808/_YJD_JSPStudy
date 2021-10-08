<%@page import="myUtil.HanConv"%>
<%@page import="org.apache.tika.parser.txt.CharsetDetector"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%!public void printInformation(JspWriter out, HttpServletRequest request, String param) throws Exception {
	
		if (param != null) {
			CharsetDetector detector = new CharsetDetector();
			byte[] bs = param.getBytes();
			detector.setText(bs);
			out.print(String.format("Query : %s", request.getQueryString())); out.print("<br>");
			out.print(String.format("Received : %s", param)); out.print("<br>");
			out.print(String.format("Formatted Received : %s", HanConv.toKor(param, "utf-8", "utf-8"))); out.print("<br>");
			out.print(String.format("Formatted Received : %s", HanConv.toKor(param, "utf-8", "euc_kr"))); out.print("<br>");
			out.print(String.format("Formatted Received : %s", HanConv.toKor(param, "euc_kr", "utf-8"))); out.print("<br>");
			out.print(String.format("Formatted Received : %s", HanConv.toKor(param, "euc_kr", "euc_kr"))); out.print("<br>");
			out.print(String.format("Size : %s", bs.length)); out.print("<br>");
			out.print(String.format("Encoding : %s", detector.detect().getName())); out.print("<br>");
			for (int i = 0; i < bs.length; i++) {
				out.print(bs[i]); out.print("<br>");
			}
		} else {
			out.print("데이터가 존재하지 않습니다.");  out.print("<br>");
		}
	}%>

<center>
	<h3>한글 출력 테스트</h3>
	<hr>
</center>

<%
	String param = request.getParameter("param");
	printInformation(out, request, param); out.print("<hr>");
%>
