<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%--세션이 없을 경우 --%>
<%if(session.getAttribute("id") == null){%> 
<form method="post" action="sessionTest.jsp">
	<div id="unauth">
	<dl>
	<dd>
		<label for="id">아이디</label>
		<input type="text" id="id" name="id" placeholder="kingdora" autofocus="autofocus" required="required" />
	</dd>
	<dd>
	<label for="pass">비밀번호</label><input type="password" id="pass" name="pass" placeholder="1234" required="required" />
	</dd>
	<dd>
		<input type="submit" value="로그인" />
	</dd>
	</dl>
	</div>
</form>
<%--세션이 있을 경우 --%>
<%} else{%> 
<form method="post" action="logout.jsp">
	<div id="auth">
		<dl>
			<dd>
			<%=session.getAttribute("id")%>님 오셨군요
			</dd>
			<dd>
				<input type="submit" value="로그아웃" />
			</dd>
		</dl>
	</div>
</form>
<%} %>
</body>
</html>

