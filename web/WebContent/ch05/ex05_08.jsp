<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<jsp:useBean id="testBean" class="ch05.bean.ExTestBean">
	<jsp:setProperty name="testBean" property="*" />
</jsp:useBean>

이름 : <jsp:getProperty property="name" name="testBean"/><br>
이메일 : <jsp:getProperty property="email" name="testBean"/><br>
방문소감 : <jsp:getProperty property="comment" name="testBean"/><br>
비밀번호 : <jsp:getProperty property="passwd" name="testBean"/><br>
</body>
</html>

