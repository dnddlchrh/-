<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="Calendar.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%@include file="DBConn.jsp" %>
<%

	request.setCharacterEncoding("UTF-8");
	query = "select code, com_name from code_search where code ='"+request.getParameter("code")+"'";
	System.out.print(query);
	pstmt = conn.prepareStatement(query);
	res = pstmt.executeQuery();
	

	if(res.next()){
		%>
		
		

<body>

			<div class="wrap">
					<table border="1">
						<tr>
							<td colspan="2" style="text-align: center;">제조사 조회 결과</td>
						</tr>
						<tr>
							<td>제품코드</td>
							<td><%=res.getString("code") %></td>
						</tr>
						<tr>
							<td>제조사명</td>
							<td><%=res.getString("com_name") %></td>
						</tr>
						<tr>
							<td>조회일시</td>
							<td><%=getmonth %> <%=getdate %> <%=date1 %> <%=hour%>:<%=minute%>:<%=second%> KST<%=year %></td>
						</tr>
					</table>
			</div>

		<% 
	}else{
%>



			<div class="wrap">
					<table border="1">
						<tr>
							<td colspan="2" style="text-align: center;">제조사 조회 결과</td>
						</tr>
						<tr>
							<td>제품코드</td>
							<td><%=request.getParameter("code") %></td>
						</tr>
						<tr>
							<td>제조사명</td>
							<td>등록되지않은 제품입니다</td>
						</tr>

						<tr>
							<td>조회일시</td>
							<td><%=getmonth %> <%=getdate %> <%=date1 %> <%=hour%>:<%=minute%>:<%=second%> KST<%=year %></td>
						</tr>
					</table>
			</div>
			<%} %>
			</body>
</html>


