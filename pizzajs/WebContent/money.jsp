<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<div class="wrap">
<%@ include file="header.jsp" %>
<div class="section">
<div class="tit_comm2">통합매출현황조회</div>
<table border="1" class="table_comm">
<thead>
	<tr>
		<th>매출전표번호</th>
		<th>지점</th>
		<th>판매일자</th>
		<th>피자코드</th>
		<th>피자명</th>
		<th>판매수량</th>
		<th class="money_th">매출액</th>
	</tr>
</thead>
<tbody>
<%-- 	<%
				while(res.next()){
					%>
			<tr>
				<td><%=res.getString("custno") %></td>
				<td><%=res.getString("custname") %></td>
				<td><%=res.getString("phone") %></td>
				<td><%=res.getString("address") %></td>
				<td><%=res.getString("joindate") %></td>
				<td><%=res.getString("grade") %></td>
				<td><%=res.getString("city") %></td>
			</tr>
			<%
				}데이터베이스에서 값 뽑아오기
			%> --%>
<tr>
	<td>100001</td>
	<td>S001-강남점</td>
	<td>2018-12-02</td>
	<td>AA01</td>
	<td>고르곤졸라피자</td>
	<td>50</td>
	<td class="moneytext_align">$300,000</td>
</tr>
</tbody>
</table>
</div>
<%@ include file="footer.jsp" %>
</div>