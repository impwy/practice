<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h3>JSTL fmt 예제 - formatNumber</h3>
<p>number : <fmt:formatNumber value="12345.678" type="number"></fmt:formatNumber>
<p>currency : <fmt:formatNumber value="12345.678" type="currency" currencySymbol="￦"/>
<p>percent : <fmt:formatNumber value="12345.678" type="percent"></fmt:formatNumber>
<p>pattern=".0" : <fmt:formatNumber value="12345.67856" pattern=".000"></fmt:formatNumber>
</body>
</html>

