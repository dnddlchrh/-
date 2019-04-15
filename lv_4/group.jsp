<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="DBConn.jsp"%>
<%
request.setCharacterEncoding("UTF-8");
query= "SELECT b.gname,sum(a.jnum) from product a, groupcode b where  a.gcode=b.gcode group by b.gname";
pstmt=conn.prepareStatement(query);
res=pstmt.executeQuery();
System.out.println(query);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그룹별재고수량</title>
</head>
<body>
<button onclick="location.href='./1.jsp'">홈으로.</button>
<table border="1">
<tr>
<th>그룹이름</th>
<th>재고 수량</th>
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