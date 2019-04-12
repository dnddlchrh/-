<%@ include file="DBConn.jsp" %>
<%
request.setCharacterEncoding("UTF-8");
String action = request.getParameter("action");
String move_url = "./";
String s1 ="";
table = "";
switch(action){
	case "join":
		table = "product";
		query = "INSERT INTO "+table+" values(?, ?, ?, ?, ?, ?, ?)";
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1, request.getParameter("code"));
        pstmt.setString(2, request.getParameter("pname"));
        pstmt.setString(3, request.getParameter("cost"));
        pstmt.setString(4, request.getParameter("pnum"));
        pstmt.setString(5, request.getParameter("jnum"));
        pstmt.setString(6, request.getParameter("sale"));
        pstmt.setString(7, request.getParameter("gcode"));
        s1 = "제품이";
        move_url+="1.jsp";
		break;
}
System.out.print(query);
res = pstmt.executeQuery();
%>
<script>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	alert("<%=s1%> 저장되었습니다");
	location.replace("<%=move_url%>");
</script>