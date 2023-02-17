<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<form action="" method="get">
		<dl>
			<dd>
				<label for="var1">값1</label> 
				<input type="text" id="var1" name="var1" placeholder="1" required="required" />
			</dd>
			<dd>
				<label for="var2">값2</label>
				 <input type="text" id="var2" name="var2" placeholder="1" required="required" />
			</dd>
			<dd><input type="submit" value="결과" /></dd>
		</dl>
	</form>
	<%
	int var1 = Integer.parseInt(request.getParameter("var1"));
	int var2 = Integer.parseInt(request.getParameter("var2"));
	 
	if(var1+var2 >= 5)
	 out.print("두 값의 합이5이상");
	else
	 out.print("두 값의 합이 5미만");
	%>
</body>
</html>

