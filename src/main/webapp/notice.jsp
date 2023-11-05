<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/bootstrap.css">
<title>공지사항</title>
<style type="text/css">
body {
	background-color: #1B222E;
}
.container {
	margin-top : 200px;
}
</style>
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
<div class = "container">
	<div class="row">
		<table class="table table-striped;" style="text-align: center; border: 1px solid gray;">
			<thead>
				<tr>
					<th style="background-color: white; text-align: center;">번호</th>
					<th style="background-color: white; text-align: center;">제목</th>
					<th style="background-color: white; text-align: center;">작성자</th>
					<th style="background-color: white; text-align: center;">작성일</th>
				</tr>
			</thead>
			<tbody>
				<tr style="background-color: lightgray; text-align: center;">
					<td>1</td>
					<td>안녕하세요</td>
					<td>홍깅동</td>
					<td>2023-11-06</td>		
				</tr>
			</tbody>
		</table>	
		<a href="write.jsp" class="btn btn-primary pull-right" target="content">글쓰기</a>
	</div>
</div>
<iframe src="" 
		name="content"
		width="100%"
		scrolling ="no"
		frameborder='0'
		sendbox="allow-same-origin"
		onload="resize()">
iframe 태그를 지원하지 않는 브라우저는 이 글이 보입니다.
</iframe>
<script src="/webjars/jquery/jquery.js"></script>
<script src="/js/bootstrap.js"></script>
</body>
</html>