<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="icon" type="image/png" href="/img/favicon.png"/>
<title>공지사항</title>
<style type="text/css">
body {
	background-color: #1B222E;
}
.container {
	margin-top : 200px;
}
</style>
</head>
<body>
<div class = "container">
	<div class="row">
		<form method="post" action="writeAction.jsp">
			<table class="table table-striped;" style="text-align: center; border: 1px solid gray;">
				<thead>
					<tr>
						<th style="background-color: white; text-align: center;">게시판 글쓰기 양식</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th><input type="text" class="form-control" placeholder="글 제목" name="noticeTitle" maxlength="50"></th>
					</tr>
					<tr>
						<th><textarea class="form-control" placeholder="글 내용" name="noticeContent" maxlength="2048" style="height : 350px;"></textarea></th>	
					</tr>
				</tbody>
			</table>
			<input type="submit" class="btn btn-primary pull-right" value="글쓰기" >
		</form>
	</div>
</div>
<script src="/webjars/jquery/jquery.js"></script>
<script src="/js/bootstrap.js"></script>
</body>
</html>