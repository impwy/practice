<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
	input{
	margin : 1px;
	}
</style>
</head>
<body>
<%
	String membername = (String)session.getAttribute("member_id");
	if(membername!=null){
		session.removeAttribute("member_id");
		session.removeAttribute("member_passed");
%>
	<script type="text/javascript">
		alert("성공적으로 로그아웃 했습니다");
	</script>
<%
	}else{
%>
<script type="text/javascript">
	alert("로그인 상태가 아닙니다 !!");
</script>
<%
	}
%>
	<h2>로그인</h2><hr>
	<form method="post" action="ex04_03.jsp">
		<input placeholder="계정을 입력해주세요" name="membername"><br>
		<input placeholder="암호를 입력해 주세요" type="password" name="memberpassword"><br>
		<input type="submit" value="로그인" />
	</form>

</body>
</html>

