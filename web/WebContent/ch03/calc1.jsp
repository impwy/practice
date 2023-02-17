<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	//변수설정
	int result = 0;

	//웹페이지 요청이 post인 경우에만 수행 
	//초기 로딩시 오류방지
	if (request.getMethod().equals("POST")) {

		//연산자를 가지고옴
		String op = request.getParameter("operator");

		//문자열 형태로 전달된 인자들을 int로 변환함.
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));

		//각 연산자별로 처리
		if (op.equals("+")) {
			result = num1 + num2;
		} else if (op.equals("-")) {
			result = num1 - num2;
		} else if (op.equals("*")) {
			result = num1 * num2;
		} else if (op.equals("/")) {
			result = num1 / num2;
		}
	}
%>

<html>
<head>
<meta charset="UTF-8">
<title>계산기</title>
</head>
<body>
<h2>계산기</h2>
<hr>
<form action="" name="form1" method="post">
<input type="text" name="num1" width="200" size="5" id=num1>
<select name="operator">
	<option selected="selected">+</option>
	<option>-</option>
	<option>*</option>
	<option>/</option>
</select>

<input type="text" name="num2" width="200" size="5">
<input type="submit" value="계산" name="B1">
<input type="reset" value="다시입력" name="B2" id=B2>
</form>
<hr>
계산결과 : <%=result %>
</body>
<script type="text/javascript">
let re = document.getElementById("B2");

	re.addEventListener("click",reset);
function reset(){
	document.getElementById("num1").focus();	
}
</script>
</html>

