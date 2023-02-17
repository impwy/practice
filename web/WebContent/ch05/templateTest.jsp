<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
<!--
	table,tr,td{
		border : 1px solid black;
		border-collapse : collapse;
	} 
-->
</style>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%String contentPage = request.getParameter("CONTENTPAGE"); %>

<table>
	<tr>
		<td colspan="2">
			<jsp:include page="top.jsp"></jsp:include>
		</td>
	</tr>
	<tr>
		<td width="150" valign="top">
			<jsp:include page="left.jsp"></jsp:include>
		</td>
		<td width="350" valign="top">
			<jsp:include page="<%=contentPage %>"></jsp:include>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<jsp:include page="bottom.jsp"></jsp:include>
		</td>
	</tr>
</table>
</body>
</html>

