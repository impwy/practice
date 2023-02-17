<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="url('chrome://new-tab-page/icons/google_logo.svg')" rel="shortcut icon" type="image/x-icon">
<title></title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

String id = request.getParameter("userid");
String name = request.getParameter("name");
String phone = request.getParameter("phone1")+"-"
+ request.getParameter("phone2")+"-" + request.getParameter("phone3");
String email = request.getParameter("email1")+"@"+request.getParameter("email2");
%>
<%=name %>님의 회원가입 처리가 아래와 같이 완료되었습니다.
<br><br>
아이디 : <%=id %> <br>
이름 : <%=name %> <br>
핸드폰 : <%=phone %> <br>
이메일 : <%=email %> <br>

</body>
</html>

