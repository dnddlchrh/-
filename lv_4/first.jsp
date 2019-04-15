<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="DBConn.jsp" %>
<%
request.setCharacterEncoding("UTF-8");
query= "SELECT pname,pnum from product where pnum > (jnum*0.2)";
pstmt=conn.prepareStatement(query);
res=pstmt.executeQuery();
System.out.println(query);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우선생산제품</title>
</head>
<body>
<button onclick="location.href='./1.jsp'">홈으로.</button>
<table border="1">
<tr>
<th>제품이름</th>
<th>생산 수량</th>
</tr>
<%while(res.next()){ %>
<tr>
<td><%=res.getString(1) %></td>
<td><%=res.getString(2) %></td>
</tr>
<%} %>
</table>
</body>
</html>