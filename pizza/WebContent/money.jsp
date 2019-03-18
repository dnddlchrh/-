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
		<th>매출액</th>
	</tr>
</thead>
<tbody>
<tr>
	<td>100001</td>
	<td>S001-강남점</td>
	<td>2018-12-02</td>
	<td>AA01</td>
	<td>고르곤졸라피자</td>
	<td>50</td>
	<td>300,000</td>
</tr>
</tbody>
</table>
</div>
<%@ include file="footer.jsp" %>
</div>