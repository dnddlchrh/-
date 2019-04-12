<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{margin: 0;padding: 0;}
.box{width: 850px;border: 1px solid #c7c7c7;height: 110px;}
.box p{
margin-left: 5px;
}
.box1{width: 200px;height: 40px;background: #eae7b9;margin-left: 5px;font-size:20px;float: left;}
</style>
</head>
<body>
<h2>생산관리 시스템</h2>

<div class="box">
<p>생산관리 메인메뉴</p>
<input class="box1" value="제품입력" type="button" onclick="location.href='./join.jsp'">
<input class="box1" value="제품조회" type="button" onclick="location.href='./update.jsp'">
<input class="box1" value="우선생산제품" type="button">
<input class="box1" value="이익순위" type="button">
<input class="box1" value="그룹별재고수량" type="button">
</div>
</body>
</html>