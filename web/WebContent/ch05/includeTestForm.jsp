<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<form action="includeTest.jsp" method="post">
	<dl>
		<dd>
			<label for="name">이름</label>
			<input type="text" id="name" name="name" placeholder="김개동"  required="required"/>
		</dd>
		<dd>
			<label for="pagename">포함할페이지</label>
			<input type="text"  id="pagename" name="pageName" value="includedTest.jsp" required="required"/>
		</dd>
		<dd>
			<input type="submit"  value="전송"/>
		</dd>
	</dl>
</form>
</body>
</html>

