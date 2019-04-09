<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="DBConn.jsp" %>
<%@ page import="java.sql.*" %>

		
	<div class="wrap">
		<form action="2.jsp" method="post">
			<table border="1">
				<tr>
					<td colspan="2">제품코드(4)입력</td>
				</tr>
				<tr>
					<td>제품코드</td>
					<td><input type="text" name="code" maxlength="4"></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center;"><input type="submit" value="확인"></td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>