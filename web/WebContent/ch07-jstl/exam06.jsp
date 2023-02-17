<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

	<!-- url 변수에 값을 넣는다.
		param정보와 함께 redirect로 넘어간다.
	 -->
<c:url var="page" value="exam07.jsp">
	<c:param name="id" value="guest"/>
	<c:param name="pwd" value="1004"/>
</c:url>
<c:redirect url="${page }"></c:redirect>
	
</body>
</html>

