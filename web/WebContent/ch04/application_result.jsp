<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div>
		<h2>application 예제</h2>
		<hr>
		username 에 설정된 값은 :
		<%=application.getAttribute("username")%><p> <%--application 객체의 username을 가져온다. --%>
			<%
				Integer count = (Integer) application.getAttribute("count"); // Integer 객체로 형변환
				int cnt = count.intValue() + 1; 
				application.setAttribute("count", cnt);
			%>
			count :
			<%=cnt%>
	</div>
</body>
</html>

