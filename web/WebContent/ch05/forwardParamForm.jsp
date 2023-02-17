<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h2>포워딩될 페이지에 파라미터값 전달 예제</h2>
<form action="forwardParamTo.jsp" method="post">
	<dl>
		<dd>
			<label for="name">이름</label>
			<input type="text" name="name" id="name" placeholder="홍길동" autofocus="autofocus" required="required"/>
		</dd>
		<dd>
		<label for="color">색선택</label>
		<select name="color" id="color" required="required">
			<option value="blue" selected="selected">파랑색</option>
			<option value="green">초록색</option>
			<option value="red">빨강색</option>
			<option value="yellow">노랑색</option>
		</select>
		</dd>
		<dd>
			<input type="submit" value="확인" />
		</dd>
	</dl>
</form>
</body>
</html>

