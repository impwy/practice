<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h2>request 예제 - 요청 메서드</h2>

<%--값 설정 --%>
<%
String name = request.getParameter("name");
String age = request.getParameter("age");
String gender = request.getParameter("gender");
String hobby = request.getParameter("hobby");

	if(gender.equals("m")){
		gender = "남자";
	}else{
		gender = "여자";
	}
	System.out.print(name);
%>

<%--화면 출력 --%>
<%=name %> 님의 정보는 다음과 같습니다.<p>
나이 : <%=age %><br>
성별 : <%=gender %><br>
취미 : <%=hobby %><br>
</body>
</html>
