<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="/css/index.css">
<link rel="icon" type="image/png" href="/img/favicon.png"/>
<title>GAMETIME</title>
<script type="text/javascript" src="/webjars/jquery/jquery.js"></script>
<script type="text/javascript" src="/js/bootstrap.js"></script>
<script type="text/javascript">

function resize() {
	let iframe = document.querySelector('iframe');
	iframe.style.height = getComputedStyle(iframe.contentDocument.documentElement).height;
}

window.onload = function() {
	
	setInterval(resize, 100);
	
}

</script>
</head>
<body>
<nav class="nav_warp">
	<div class="nav_warp_top">
		<ul class="nav_warp_ul1">
			<li class ="nav_warp_lo">
				<a href="/">
					<img alt="" src="/img/logo.png">
				</a>
			</li>
			<li class = "nav_warp_mu"><a href="" class="font_mu">PC게임</a></li>
			<li class = "nav_warp_mu"><a href="" class="font_mu">콘솔게임</a></li>
			<li class = "nav_warp_mu"><a href="" class="font_mu">예약구매</a></li>
			<li class = "nav_warp_mu"><a href="../notice.jsp" class="font_mu" target="content">공지사항</a></li>
			<li class = "nav_warp_mu"><a href="" class="font_mu">1:1문의</a></li>
		</ul>
		<sec:authorize access = "isAnonymous()">
		<li >
			<div class = "nav_login">
				<ul class = "nav_login_mu">
					<li><a href="/login" class="font_log">로그인</a></li>
					<li><a href="" class="font_log">회원가입</a></li>
				</ul>
			</div>
			<div class = "nav_src">
				<form action="">
						<div class = "nav_src_in">
							<input type="text" class="nav_input" placeholder="게임검색">
						</div>
						<div class = "nav_src_bt">
							<button type="submit">
								<img src="/img/search.png">
							</button>
						</div>
				</form>
			</div>
		</li>
		</sec:authorize>
		<sec:authorize access="isAuthenticated()">
		<div class = "nav_logout">
				<ul class = "nav_logout_mu">
					<li><a href="/logout" class="font_log">로그아웃</a></li>
					<li><a href="#"><sec:authentication property="name"/> </a></li>
				</ul>
			</div>
			<div class = "nav_src">
				<form action="">
						<div class = "nav_src_in">
							<input type="text" class="nav_input" placeholder="게임검색">
						</div>
						<div class = "nav_src_bt">
							<button type="submit">
								<img src="/img/search.png">
							</button>
						</div>
				</form>
			</div>
		</sec:authorize>
</nav>
<iframe src="/composition/main.jsp" 
		name="content"
		width="100%"
		scrolling ="no"
		frameborder='0'
		sendbox="allow-same-origin"
		onload="resize()">
iframe 태그를 지원하지 않는 브라우저는 이 글이 보입니다.
</iframe>
</body>
</html>