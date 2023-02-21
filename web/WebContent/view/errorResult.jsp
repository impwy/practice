<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
	span{
		color:hotpink;
	}
</style>
</head>
<body>
	<h2>오류가 발생했어요</h2>
	<h3>
		오류의 원인 : <span>${requestScope.msg }</span>
	</h3>
	<a href="/web/ch09/calcForm.html">입력화면으로</a>
</body>
</html>

