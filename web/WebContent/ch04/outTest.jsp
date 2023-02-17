<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<% int bufferSize = out.getBufferSize();
	int remainSize = out.getRemaining();
	int usedSize = bufferSize - remainSize;
%>
<h2>out 객체 예제 - getBufferSize(), getRemaining, print()메서드 사용</h2>
<b>현재 페이지의 버퍼 사용 현황</b>
출력 버퍼의 전체 크기 : <%=bufferSize %>byte<br>
현재 사용한 버퍼의 크기 : <%=usedSize %>byte<br>
남은 버퍼의 크기 : <%out.print(remainSize); %>byte
</body>
</html>

