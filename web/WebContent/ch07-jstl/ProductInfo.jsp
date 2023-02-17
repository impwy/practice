<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<c:set var="CODE" value="80012" scope="request"/>
<c:set var="NAME" value="온도습계" scope="request"/>
<c:set var="PRICE" value="15000" scope="request"/>
<jsp:forward page="ProductInfoView.jsp"></jsp:forward>
</body>
</html>

