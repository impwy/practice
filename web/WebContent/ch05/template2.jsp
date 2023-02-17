<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="template.css"/>
<%String contentPage = request.getParameter("CONTENTPAGE"); %>
<title></title>
</head>
<body>
<header>
	<jsp:include page="top.jsp"></jsp:include>
</header>
<div id="content">
	<section id="areaSub">
		<jsp:include page="left.jsp"></jsp:include>
	</section>
	<section id="areaMain">
		<jsp:include page="<%=contentPage %>"></jsp:include>
	</section>
</div>
<footer>
	<jsp:include page="bottom.jsp"></jsp:include>
</footer>
</body>
</html>

