<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
					<select name="search_condition">
						<option value="">전체</option>
						<option value="제목or저자">제목or저자</option>
						<option value="제목">제목</option>
						<option value="저자">저자</option>
					</select>
					<input type="text"/>
					<button type="submit">검색</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>