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
       ds = (DataSource)ctx.lookup("java:comp/env/jdbc/oracle"); // ��ĳ����
       conn = ds.getConnection(); // getConnection()�� SQLException�� ������. 
       System.out.println("DBCP ���� ����");
    }catch(NamingException ne){  // �̸� ��ã����� 
       ne.printStackTrace();
    }catch(SQLException se){ // �����ͺ��̽� ��ã�����      ,�̹��� catch 2�� ����� 
       se.printStackTrace();
    }finally{
       try{
          if(conn != null) conn.close();
       }catch(Exception e){
          e.printStackTrace();
       }
    }
 %>