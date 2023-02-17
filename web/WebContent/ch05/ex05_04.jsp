<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getProperty 액션 태그 예제</title>
</head>
<body>
<h2>getProperty 액션 태그 예제</h2>
<hr />
<jsp:useBean id="today" class="jspbean.Today"></jsp:useBean>
<h3>
<jsp:getProperty property="year" name="today"/>년
<jsp:getProperty property="month" name="today"/>월
<jsp:getProperty property="date" name="today"/>일
</h3>
</body>
</html>

