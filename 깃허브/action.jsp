<%@ include file="DBConn.jsp" %>
<%
request.setCharacterEncoding("UTF-8");
String action = request.getParameter("action");
String move_url = "./";
String s1 ="";
table = "custom_01";
switch(action){
	case "insert":
		query = "INSERT INTO "+table+" values( ?, ?, ?, ?, ?)";
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1, request.getParameter("p_id"));
        pstmt.setString(2, request.getParameter("p_pw"));
        pstmt.setString(3, request.getParameter("c_name"));
        pstmt.setString(4, request.getParameter("c_email"));
        pstmt.setString(5, request.getParameter("c_tel"));
        s1 = "삽입";
        move_url += "3.jsp";
		break;
}
System.out.print(query);
res = pstmt.executeQuery();
%>
<script>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	alert("<%=s1%> 완료되었습니다");
	location.replace("<%=move_url%>");
</script>