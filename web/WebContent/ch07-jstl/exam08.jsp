<%@page import="java.util.Date"%>
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

<c:set var="now" value="<%= new Date() %>" />

<fmt:formatDate type="time" value="${now}"/><br>
<fmt:formatDate type="date" value="${now}"/><br>
<fmt:formatDate type="both" value="${now}"/><br>
<fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${now}"/><br>
<fmt:formatDate type="both" dateStyle="medium" timeStyle="medium" value="${now}"/><br>
<fmt:formatDate type="both" dateStyle="long" timeStyle="long" value="${now}"/><br>
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/><br>

<fmt:parseDate  value="2016-12-24 09:03:23" pattern="yyyy-MM-dd HH:mm:ss" var="date"/>
<p>${date}</p>

</body>
</html>

