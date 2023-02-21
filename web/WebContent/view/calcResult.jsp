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
<h1>연산 결과</h1>
<hr>
<h2>
	결과 : <span>${ requestScope.result }</span>
</h2>
<a href="/web/ch09/calcForm.html">입력화면으로</a>
</body>
</html>

