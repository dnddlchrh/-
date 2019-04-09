<%@include file="DBConn.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
query = "select p_id,c_name,c_email,c_tel from custom_01";
pstmt = conn.prepareStatement(query);
res = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보</title>
<link rel="stylesheet" href="css/index.css" />
</head>
<body>
<div>
	<div>
	<h2 style="width: 400px; text-align: center;">회원목록조회</h2>
	<table border="1" style="text-align: center;">
		<thead>
			<tr>
				<th>회원아이디</th>
				<th>회원이름</th>
				<th>이메일</th>
				<th>연락처</th>
			</tr>
		</thead>
		<tbody>
		<%
				while(res.next()){
					%>
			<tr>
				<td><%=res.getString("p_id") %></td>
				<td><%=res.getString("c_name") %></td>
				<td><%=res.getString("c_email") %></td>
				<td><%=res.getString("c_tel") %></td>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>
</div>
</div>
</body>
</html>