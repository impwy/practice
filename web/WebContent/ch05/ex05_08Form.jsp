<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<form action="ex05_08.jsp" method="post">
	<dl>
		<dd>
		<label for="name">이름</label>
		<input type="text" name="name" id="name" size="20" 
		placeholder="홍길동" maxlength="10" autofocus="autofocus"/>
		</dd>
		<br>
		<dd>
		<label for="email">이메일</label>
		<input type="email" id="email" name="email" size="30" placeholder="aaa@aaa.com" maxlength="50" />
		</dd>
		<br>
		<dd><label for="comment">방문소감</label>
		<textarea id="comment" name="comment" rows="10" cols="50" type="text" ></textarea>
		</dd><br>
		<dd><label for="passwd">비밀번호</label>
		<input type="password" id="passwd" name="passwd" size="20" placeholder="6~16자 숫자/문자" maxlength="16"/>
		</dd>
		<br>
		<dd>
		<input type="submit" value="입력완료" />
		</dd>
	</dl>
</form>
</body>
</html>

