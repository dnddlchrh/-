<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="DBConn.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.box{border: 1px solid #c7c7c7;height: 280px;}
.box1{width: 80px;height: 30px;background: #eae7b9;margin-left: 5px;font-size:15px;text-align: center;}
#left{margin-left: 30px;}
</style>
</head>
<body>
<h2>생산관리 등록화면</h2>
<form action="./action.jsp" method="post" class="box">
<input value="join" type="hidden" name="update">
<p>생산관리 등록화면</p>
<ul>
	<li>제품코드 <input type="text" name="code" maxlength="3"></li>
	<li>제품이름 <input type="text" name="pname"></li>
	<li>제품원가 <input type="text" name="cost"></li>
	<li>목표수량 <input type="text" name="pnum"></li>
	<li>재고수량 <input type="text" name="jnum"></li>
	<li>출고가 <input type="text" name="sale"></li>
	<li>그룹이름 
	<select name="gcode">
	<option value="A">컴퓨터</option>
	<option value="B">냉장고</option>
	<option value="C">냉장소모품</option>
	</select></li>
</ul>
<input value="조 회" type="submit" class="box1" id="left" onclick="location.href='./select.jsp'"><input value="조 회" type="submit" class="box1"><input class="box1" value="메인화면" type="button" onclick="location.href='./1.jsp'">
</form>
</body>
</html>