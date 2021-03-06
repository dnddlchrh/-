<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="DBConn.jsp" %>
<%
request.setCharacterEncoding("UTF-8");
String code =request.getParameter("code");
String pname = "";
String cost = "";
String pnum = "";
String jnum = "";
String sale = ""; 
String gcode = "";
String gname = "";
if(code != null){
	switch(request.getParameter("btn")){
		case "select":
			query="SELECT * from product a, groupcode b where code= '"+code+"'  and a.gcode=b.gcode";
			pstmt=conn.prepareStatement(query);
			res=pstmt.executeQuery();
			res.next();
			if(res != null){
				pname=res.getString("pname");
				cost=res.getString("cost");
				pnum=res.getString("pnum");
				jnum=res.getString("jnum");
				sale=res.getString("sale");
				gcode=res.getString("gcode");
				gname=res.getString("gname");
			}
			break;
		case "update":
			query= "UPDATE product SET pname = ?, cost = ?,pnum = ?, jnum = ?, sale = ?, gcode = ?  WHERE code= ?";
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, request.getParameter("pname"));
			pstmt.setString(2, request.getParameter("cost"));
			pstmt.setString(3, request.getParameter("pnum"));
			pstmt.setString(4, request.getParameter("jnum"));
			pstmt.setString(5, request.getParameter("sale"));
			pstmt.setString(6, request.getParameter("gcode"));
			pstmt.setString(7, code);
			res=pstmt.executeQuery();
			res.next();
			break;
		case "delete":
			query="delete from product where code='"+code+"'";
			code="";
			pstmt=conn.prepareStatement(query);
			res=pstmt.executeQuery();
			res.next();
			break;
	}
	System.out.println(query);
}



%>
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
<form action="update.jsp" method="post" class="box">
<p>생산관리 등록화면</p>
<ul>
		<li>제품코드 <input type="text" name="code" maxlength="3" value="<%=code == null? "": code%>"></li>
		<li>제품이름 <input type="text" name="pname" value="<%=pname%>"></li>
		<li>제품원가 <input type="text" name="cost" value="<%=cost%>"></li>
		<li>목표수량 <input type="text" name="pnum" value="<%=pnum%>"></li>
		<li>재고수량 <input type="text" name="jnum" value="<%=jnum%>"></li>
		<li>출고가 <input type="text" name="sale" value="<%=sale%>"></li>
		<li>그룹이름 
		<select name="gcode">
		<option value="<%=gcode%>"><%=gname%></option>
		<option value="A">컴퓨터</option>
		<option value="B">냉장고</option>
		<option value="C">냉장소모품</option>
		</select>
	</li>
</ul>
<button type="submit" name="btn" value="select" id="left" class="box1">조 회</button>
<button type="submit" name="btn" value="update" id="left" class="box1">수 정</button>
<button type="submit" name="btn" value="delete" id="left" class="box1">삭 제</button>
<button type="button" onclick="location.href='1.jsp'" id="left" class="box1">메인화면</button>
</form>
</body>
</html>