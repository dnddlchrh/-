<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/DBConn.jsp" %>
<%
table = "libary0510";
query = "select * from "+table;
pstmt = conn.prepareStatement(query);
res = pstmt.executeQuery();
%>
<!-- create table libary0510(
idx int,
title varchar(50),
writer varchar(50),
state varchar(10),
PRIMARY key(idx)
);

insert into libary0510 values('1','선녀와 나무꾼','홍길동','가능');
insert into libary0510 values('2','나무꾼과 나무꾼','길홍동','불가능');
insert into libary0510 values('3','나무꾼과 선녀','길동홍','가능');
insert into libary0510 values('4','금도끼와 나무꾼','길동홍','가능');
insert into libary0510 values('5','은도끼와 나무꾼','홍동기','
가능'); -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ui 페이퍼 프로토 타이핑</title>
<link rel="stylesheet" href="css/index.css" />
</head>
<body>
<div class="header_a">
<div class="header_b">
			<div class="logo"><img alt="logo1" src="img/logo.png"></div>
			<nav>
				<ul>
					<li><a href="#" class="mu1">자료검색</a></li>
					<li><a href="#" class="mu2">신청·예약</a></li>
					<li><a href="#" class="mu3">소통·참여</a></li>
					<li><a href="#" class="mu4">방문·이용안내</a></li>
					<li><a href="#" class="mu5">도서관소개</a></li>
				</ul>
			</nav>
		</div>
</div>
	<div id="wrap">
		<div class="section">
			<div class="menu">
				<h2 class="tit_menu">자료검색</h2>
				<div class="menu_inbox">
					<ul>
						<li><a href="#">소장자료</a></li>
						<li><a href="#">정부간행물</a></li>
						<li><a href="#">디지털화 자료</a></li>
						<li><a href="#">국가자료종합목록</a></li>
						<li><a href="#">한국고전적종합목록</a></li>
						<li><a href="#">Web DB</a></li>
						<li><a href="#">연계자료</a></li>
						<li><a href="#">신착자료</a></li>
						<li><a href="#">사서추천도서</a></li>
						<li><a href="#">책 읽어주는 도서관</a></li>
						<li><a href="#">영상자료목록</a></li>
						<li><a href="#">검색이용안내</a></li>
					</ul>
				</div>
			</div>
			<div class="content">
				<h3 class="tit_menu" id="tit_content">자료검색</h3>
				<div class="search">
					<div class="search_tit">자료검색</div>
					<div class="ser_box">
					<select name="search_condition" class="select_dig">
						<option value="">전체</option>
						<option value="제목or저자">제목or저자</option>
						<option value="제목">제목</option>
						<option value="저자">저자</option>
					</select>
					<input type="text" class="search_input" placeholder="검색어를 입력하세요"/>
					</div>
					<button type="submit" class="ser_btn">검색</button>
				</div>
				<div class="content_main">
				<table class="list">
					<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>저자</th>
						<th>대출여부</th>
						<th></th>
					</tr>
					</thead>
					<tbody>
					<%while(res.next()){ %>
					<tr>
						<td class="idx"><%=res.getString("idx") %></td>
						<td><%=res.getString("title") %></td>
						<td><%=res.getString("writer") %></td>
						<td><%=res.getString("state") %></td>
						<td><button class="choice">선택</button></td>
					</tr>
					<%} %>
					</tbody>
				</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>