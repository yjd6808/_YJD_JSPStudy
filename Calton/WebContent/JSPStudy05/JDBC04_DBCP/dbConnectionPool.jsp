<%@page import="org.apache.tomcat.dbcp.dbcp.BasicDataSource"%>
<%@page import="org.apache.naming.java.javaURLContextFactory"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="java.sql.SQLException"%>
<%@page import="javax.naming.NamingException"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
  DataSource ds = null;   
  Connection conn = null;
%>
<%
	// System.out.print(ds.getClass().getName()); // org.apache.tomcat.dbcp.dbcp.BasicDataSource
  	// BasicDataSource
    try{
       Context ctx =  new InitialContext();
       ds = (DataSource)ctx.lookup("java:comp/env/jdbc/oracle"); // 업캐스팅
       conn = ds.getConnection(); // getConnection()이 SQLException을 던진다. 
       System.out.println("DBCP 연동 성공");
    }catch(NamingException ne){  // 이름 못찾은경우 
       ne.printStackTrace();
    }catch(SQLException se){ // 데이터베이스 못찾은경우      ,이번에 catch 2개 사용함 
       se.printStackTrace();
    }finally{
       try{
          if(conn != null) conn.close();
       }catch(Exception e){
          e.printStackTrace();
       }
    }
 %>