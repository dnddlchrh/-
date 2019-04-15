<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="DBConn.jsp"%>
<%
request.setCharacterEncoding("UTF-8");
query= "SELECT pname ,(jnum*sale) as price from product order by price desc";
pstmt=conn.prepareStatement(query);
res=pstmt.executeQuery();
System.out.println(query);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<button onclick="location.href='./1.jsp'">홈으로.</button>
<table border="1">
<tr>
<th>제품이름</th>
<th>총이익금액</th>
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