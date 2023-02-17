<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장객체 예제</title>
<style type="text/css">
	input{
		margin : 1px;
	}
</style>
</head>
<body>
<%
	if(request.getMethod().equals("POST")){
		if(session.isNew() || session.getAttribute("member_id") == null){
			String name = request.getParameter("membername");
			String passwd = request.getParameter("memberpassword");
			if(name.equals("duke") && passwd.equals("java")){
				session.setAttribute("member_id", name);
				session.setAttribute("member_passwd", passwd);
				session.setMaxInactiveInterval(60);
				%>
				<script type="text/javascript">
					alert("성공적으로 로그인 했습니다!!");
				</script>
				<h3><%=name %> 회원님 좋은하루 되세요</h3>
				<a href="ex04_03_result.jsp">로그아웃</a>
				<%}else{%>
					<script>
					alert("로그인에 실패했습니다!!");
					</script>
					<h2>로그인</h2>
					<form method="post">
					<input placeholder="계정을 입력해주세요" name="membername"><br>
					<input type="password" name="memberpassword" placeholder="암호를 입력해주세요" /><br>
					<input type="submit" value="로그인">
					</form>
					<%
				}
		}
	}else if(request.getMethod().equals("GET")){
		String name = (String)session.getAttribute("member_id");
		if(name!=null){
	%>		<h3><%= name %>회원님 좋은하루 되세요</h3>
		<a href="ex04_03_result.jsp">로그아웃</a>
	<%} else{
	%>
	<script>
		alert("로그인 해주세요!");
	</script>
		<h3>로그인</h3>
		<form method="post" action="ex04_03.jsp">
			<input placeholder="계정을 입력하세요" name="membername"><br>
			<input type="password" placeholder="암호를 입력해주세요" name="memberpassword"><br>
			<input type="submit" value="로그인">
					</form>
					<%
					}
				}%>
</body>
</html>
