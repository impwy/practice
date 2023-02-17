<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tagfile" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h3>태그 파일을 사용한 커스텀태그 작성 예제 - 속성이 있는 태그</h3>
<c:set var="welcome" value="환영합니다."/>
<form method="post" action="#">
	<input type="text" name="name" />
	<input type="submit" value="Submit" />
</form>

<c:if test="${fn:length(param.name) > 0}">
<tagfile:attribute name="${param.name }" welcome="${welcome }"/>
</c:if>
</body>
</html>

