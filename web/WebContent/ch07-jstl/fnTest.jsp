<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="greeting" value="How Are you?"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여러가지 인사말</title>
</head>
<body>
본래의 문자열 : ${greeting}<br>
모두 대문자로 : ${fn:toUpperCase(greeting)}<br>
모두 소문자로 : ${fn:toLowerCase(greeting)}<br>
	Are의 위치는? : ${fn:indexOf(greeting,"Are")}<br>
	Are을 Were로 바꾸면? : ${fn:replace(greeting,"Are","Were")}<br> 
	문자열의 길이는? :  ${fn:length(greeting)}<br>
</body>
</html>

