<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
int kor = Integer.parseInt(request.getParameter("kor"));
int eng = Integer.parseInt(request.getParameter("eng"));
int mat = Integer.parseInt(request.getParameter("mat"));
int tot = kor + eng + mat;
int avg = tot/3;
String grade = "";
if(avg>=90){
	grade="A";
}else if(avg>=80){
	grade="B";
}else if(avg>=70){
	grade="C";
}else if(avg>=60){
	grade="D";
}else{
	grade = "F";
}
%>
이름 : <%=name %><br>
국어 : <%=kor %><br>
영어 : <%=eng %><br>
수학 : <%=mat %><br>
총점 : <%=tot %><br>
평균 : <%=avg %><br>
등급 : <%=grade %><br>
</body>
</html>

