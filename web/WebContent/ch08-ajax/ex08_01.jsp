<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<style type="text/css">
	#result{
		width : 200px;
		height : 200px;
		border : 5px double #229944;
	}
</style>
<title></title>
</head>
<body>
	<p>아이디와 비밀번호 입력</p>
	<dl>
		<dd>
			<label for="id">아이디</label>
			<input id="id" name="id" type="text"
			placeholder="aaaa@aaa.com" autofocus required>
		</dd>
		<dd>
		<label for="passwd">비밀번호</label>
		<input type="password" name="passwd" id="passwd" placeholder="비밀번호" required />
		</dd>
		<dd>
		<button id="pro">확인</button>
		</dd>
	</dl>
	<p>결과</p>
	<div id="result"></div>
</body>
<script>
	$(document).ready(function(){
		$("#pro").click(function(){
			let result = "아이디 : " + $("#id").val();
			result += ", 비밀번호 : " + $("#passwd").val();
			$("#result").text(result);
		});
	});
</script>
</html>

