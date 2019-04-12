<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String query="";
String table="";
ResultSet res=null;
PreparedStatement pstmt=null;
String user="asd";
String password="1234";
String driver = "oracle.jdbc.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:XE";
Connection conn=null;
try{
	Class.forName(driver);
	conn = DriverManager.getConnection(url,user,password);
	
}catch(ClassNotFoundException e){
	System.out.print("드라이버실패");
}catch(SQLException e){System.out.print("오라클실패");}
%>