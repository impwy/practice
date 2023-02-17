<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body onload="time()">
<c:set var="now" value="<%=new java.util.Date() %>"/>
<div id="d">
대한민국 : <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full" /><br>
</div>
<fmt:timeZone value="EST">
미국 : <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full" />
</fmt:timeZone><br>

<fmt:timeZone value="Europe/London">
런던 : <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full" />
</fmt:timeZone><br>

<hr>

<h4>한국</h4>
<fmt:setLocale value="ko_kr"/>
<c:set var="date" value="<%= new java.util.Date() %>"/>
금액 : <fmt:formatNumber value="1000000" type="currency"/><br>
일시 : <fmt:formatDate value="${date}" type="both" dateStyle="full" timeStyle="full"/><br>

<h4>미국</h4>
<fmt:setLocale value="en_us"/>
<c:set var="date" value="<%= new java.util.Date() %>"/>
금액 : <fmt:formatNumber value="1000000" type="currency"/><br>
일시 : <fmt:formatDate value="${date}" type="both" dateStyle="full" timeStyle="full"/><br>

<h4>일본</h4>
<fmt:setLocale value="ja_jp"/>
<c:set var="date" value="<%= new java.util.Date() %>"/>
금액 : <fmt:formatNumber value="1000000" type="currency"/><br>
일시 : <fmt:formatDate value="${date}" type="both" dateStyle="full" timeStyle="full"/><br>

</body>
<!-- <script>
 	
let time = () => {
	  let now = new Date();
	  let koreaTime = now.toLocaleString("ko-KR");
	  document.getElementById("d").innerHTML = `대한민국 : ${koreaTime}<br>`;
	};
		setInterval(time, 1000);
</script> -->
</html>

