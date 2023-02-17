<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<c:set var="date" value="<%= new Date() %>"/>
[오늘의 날짜] <fmt:formatDate value="${date}"/><br>
[현재의 시간] <fmt:formatDate value="${date}" type="time"/>
</body>
</html>

