<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h2>EL의 Query 문자열 추출</h2>
<hr />
전달된 메세지의 존재 여부 : ${!empty param.message } <br>
전달된 메세지의 내용은 : ${ param.message } 입니다.<br>
전달된 메세지의 내용은 : ${ param["message"] } 입니다. <br>
</body>
</html>

