<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="ch06.bean.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

<!-- BookBean 자바클래스에 배열을 추가한다. -->
<%
	ArrayList<BookBean> bookList = new ArrayList<BookBean>();
	bookList.add(new BookBean("The Secret", "Byrne, Rhonad","Atria Books"));
	bookList.add(new BookBean("The Last Lecture", "Randy Pausch","hyperion"));
	
	String[] bookCode = {"소설","역사","인문","정치","미술","종교","여행","과학","만화","건강"};
%>

	<!-- list변수에 bookList를 넣어준다. -->
<c:set var="list" value="<%=bookList %>"/>

		<!--변수 item을 선언하고 list를 넣어준다.  -->
<c:forEach items="${list }" var="item">
		<!-- list에 들어있는 값을 하나씩 꺼내 반복한다 -->
	${item.title }/${item.author }/${item.publisher }<br>	
</c:forEach>

<hr>

<c:set var="code" value="<%=bookCode %>"/>

<c:forEach var="item" items="${code }">
	<c:out value="${item }"/>
</c:forEach><br>

<hr>

<c:forEach var="i" begin="2" end="9">
	<c:forEach var="j" begin="1" end="9"> 
		${i } * ${j } = ${i*j } <br>	
	</c:forEach>
</c:forEach>
<hr>
<c:forEach var="k" begin="1" end="10" step="2">
	${k }
</c:forEach>

<hr>

<c:forTokens items="소설/역사/인문/정치/미술/종교/여행/과학/만화/건강" delims="/" var="token">
	${token}
</c:forTokens>
</body>
</html>

