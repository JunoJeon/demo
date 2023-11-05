<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GAMETIME LOGIN</title>
<link rel="stylesheet" href="/css/login.css">
</head>
<body>
<section>
	<h1>GAMETIME</h1>
	<c:if test="${param.error == ''}">
		<div class="error">사용자 Id 또는 Password를 확인해 주세요</div>
	</c:if>
	<form action="/login" method = "post">
		<fieldset>
			<div class = "input">
				<input id="enter" name="username" placeholder="ID"/>
			</div>
		</fieldset>
		<fieldset>
			<div class = "input">
			<input id="enter" name="password" type="password" placeholder="PASSWORD"/>
			</div>
		</fieldset>
		<fieldset>
			<div class = "input loginbox">
			<input type="submit" value="Sign in" id="loginbox">
			</div>
		</fieldset>
	</form>
</section>
</body>
</html>