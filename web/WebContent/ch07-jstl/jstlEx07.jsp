<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h3>JSTL fmt 태그 예제 - bundle, message</h3>
<fmt:bundle basename="ch06.bean.testBundle">
<fmt:message key="name" ></fmt:message>
<fmt:message key="message" var="msg"></fmt:message>
<p><c:out value="${msg }"></c:out>
</p>
</fmt:bundle>

</body>
</html>

