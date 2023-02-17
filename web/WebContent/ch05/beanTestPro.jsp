<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="testBean" class="ch05.bean.TestBean">
	<jsp:setProperty property="id" name="testBean"/>
</jsp:useBean>
입력된 아이디 :
<jsp:getProperty property="id" name="testBean" />
</body>
</html>

