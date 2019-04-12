<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="DBConn.jsp"%>
<%
String code =request.getParameter("code");
query="SELECT * from product where ="+code;
pstmt=conn.prepareStatement(query);
res=pstmt.executeQuery();
%>