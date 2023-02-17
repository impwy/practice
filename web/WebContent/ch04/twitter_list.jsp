<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	//request 값 utf-8로 변환
	request.setCharacterEncoding("UTF-8");

	//request 객체의 값을 가져와 있다면 session에 넣는다.
	String username = request.getParameter("username");
	if(username!=null){
		session.setAttribute("user", username);
	}
%>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<div>
	<h3>My Simple Twitter!!</h3>
	<hr>
	<form action="tweet.jsp" method="post">
		<input type="text" name="msg" />
		<input type="submit" value="Tweet" />
	</form>
	<hr>
	<div>
		<ul>
			<%
			//application 내장 객체를 확인 msgs 변수에 mags로 저장된 값을 가져온다.
				ArrayList<String> msgs = (ArrayList)application.getAttribute("msgs");
			
			if(msgs != null){
				for(String msg : msgs){
					out.print("<li>"+msg+"</li>");
				}
			}
			%>
		</ul>
	</div>
</div>
</body>
</html>

