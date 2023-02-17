<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>setProperty 액션 태그 예제("*")</title>
</head>
<body>
<%
if(request.getMethod().equals("GET")){
%>
	<h2>요청 폼</h2>
	<hr />
	<form action="ex05_06.jsp" method="post">
		예약자명 : <input type="text" name="bookerName"><br>
		예약칼라 : <input type="color" name="bookerColor"><br>
		예약일시 : <input type="datetime-local" name="bookerDateTime"><br>
		<input type="submit" value="예약완료" />
	</form>
	<%}else { 
		request.setCharacterEncoding("UTF-8");
	%>
	<h2>setProperty 액션 태그 예제 ("*"사용)</h2>
	<hr>
	<jsp:useBean id="booker" class="jspbean.BookerInfo"></jsp:useBean>
	<jsp:setProperty property="*" name="booker"/>
	예약자명 : <jsp:getProperty property="bookerName" name="booker"/><br>
	예약칼라 : <jsp:getProperty property="bookerColor" name="booker"/><br>
	예약일시 : <jsp:getProperty property="bookerDateTime" name="booker"/>
	<%} %>
</body>
</html>

