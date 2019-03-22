<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<div class="wrap">
<%@ include file="header.jsp" %>
<div class="section">
<div class="tit_comm2">지점별 매출 현황</div>
<table border="1" class="table_comm" >
<thead>
	<tr>
		<th class="place_tb">지점코드</th>
		<th class="place_tb">지점 명</th>
		<th class="place_tb">총매출액</th>

	</tr>
</thead>
<tbody>
<tr>
	<td>S001</td>
	<td>강남점</td>
	<td class="moneytext_align">$1,010,000</td>
</tr>
</tbody>
</table>
</div>
<%@ include file="footer.jsp" %>
</div>