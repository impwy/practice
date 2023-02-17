<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h3>JSTL core 태그 예제 - forTokens</h3>
<c:forTokens items="금강불괴,허공답보,열양기공,천마군림보" delims="," var="tech">
	<p>익혀야할 기술 : <c:out value="${tech }"></c:out>
</c:forTokens>
</body>
</html>

