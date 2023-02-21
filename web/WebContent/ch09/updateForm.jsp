<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<title>Update query</title>
</head>
<body>
<h1>Update Query</h1>

<form method="post" action="updatePro.jsp">
	
	<table>
		<tr>
			<td class="label"><label for="idt">아이디</label></td>
			<td class="content"><input type="text" id="idt"  name="idt" size="20"
			maxlength="50" placeholder="example@kinks.com" autofocus required /></td>
		</tr>
		<tr>
			<td class="label"><label for="passwd">비밀번호</label></td>
			<td class="content"><input type="password" name="passwd"  id="passwd" 
			size="20" placeholder="6~16자 숫자/문자" maxlength="16" required/></td>
		</tr>
		<tr>
			<td class="label"><label for="name">이름</label></td>
			<td class="content"><input type="text" name="name" id="name"
			 size="20" maxlength="10" placeholder="킹도라" required /></td>
		</tr>
		<tr>
			<td class="label"><label for="addr">주소</label></td>
			<td class="content"><input type="text" name="addr" id="addr" required 
			size="20" maxlength="100" placeholder="서울시"/></td>
		</tr>
		<tr>
			<td class="label"><label for="tel">전화번호</label></td>
			<td class="content"><input type="text" id="tel" name="tel" size="20"
			 maxlength="20" placeholder="010-1111-1111" required /></td>
		</tr>
		<tr>
			<td class="label2" colspan="2">
			<input type="submit" value="수정완료" />
			<input type="reset"  value="다시작성"/>
			</td>
		</tr>
	</table>
	
</form>
</body>
</html>

