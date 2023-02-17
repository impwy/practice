<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
	table,td,th{
	border : 1px solid black;
	}
</style>
</head>
<body>
<h2>기상청 날씨정보(XML)를 읽어오는 예제</h2>
<hr>

<!-- 예외 처리 해주기 -->
<c:catch var="err">

<!-- url주소로 xml 파일을 임포트해준다. 변수명은 weather이다 -->
<c:import var="weather" url="http://www.kma.go.kr/wid/queryDFSRSS.jsp?zone=1168064000">
</c:import>

<!-- weather로 임포트한 xml파일을 읽을 수 있게 Dom형태의 변수로 
파싱해준다. 변수 wrss로 파싱한다. -->
<x:parse varDom="wrss" xml="${weather }"/>

<x:out select="$wrss/rss/channel/title"/><br>
<table>
	<tr>
		<th colspan="2">현재날씨</th>
	</tr>
	<tr>
		<td>기준시간</td>
		<td>
		<x:out select="$wrss/rss/channel/pubDate" />
		</td>
	</tr>
	<tr>
		<td>기온</td>
		<td>
			<x:out select="$wrss/rss/channel/item/description/body/data/temp"/>
		</td>
	</tr>
	<tr>
		<td>습도</td>
		<td>
			<x:out select="$wrss/rss/channel/item/description/body/data/reh"/>
		</td>
	</tr>
	<tr>
		<td>강수확률</td>
		<td>
			<x:out select="$wrss/rss/channel/item/description/body/data/pop"/>
		</td>
	</tr>
</table>
</c:catch>

<c:if test="${!empty err }">
<h2>오류 발생!!</h2>
</c:if>
</body>
</html>

