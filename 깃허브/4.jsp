<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="wrap">
    <div class="section">
    
        <form action="action.jsp" method="post">
        <input type="hidden" name="action" value="insert">
		<div class="tit">회원 등록</div>
	  	<table border="1">
			<tr>
				<th>아이디</th>
				<td><input type="text"name="p_id"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="text" name="p_pw"></td>
			</tr>
			<tr>
				<th>성명</th>
				<td><input type="text" name="c_name" style="width:180px;"></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="text" name="c_email" style="width:220px;"></td>
			</tr>
			<tr>
				<th>연락처</th>
				<td><input type="text" class="input_comm" name="c_tel"></td>
			</tr>
			<tr>
			<td colspan="2">
				<input class="btn_comm" value="등록" type="submit"/>
				<input class="btn_comm" value="조회" type="button" onclick="location.href='3.jsp'">
			</td>
			</tr>
		 </table>
        </form>
    </div>
</div>
</body>
</html>