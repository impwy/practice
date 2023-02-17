<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css"/>
<title></title>
</head>
<body>
<form method="post" action="registerPro.jsp">
	<table>
		<tr>
			<td class="label"><label for="idt">아이디</label></td>
			<td class="content"><input id="idt" name="idt" type="text" size="20" maxlength="30"
			 placeholder="example@kings.com" autofocus="autofocus" required="required">
			 </td>
		</tr>
		<tr>
			<td class="label"><label for="passwd">비밀번호</label></td>
			<td class="content"><input id="passwd" name="passwd" type="password" size="20" maxlength="12"
			 placeholder="6~12자 숫자/문자" required="required">
			 </td>
		</tr>
		<tr>
			<td class="label"><label for="name">이름</label></td>
			<td class="content"><input id="name" name="name" type="text" size="20" maxlength="10"
			 placeholder="킹도라" required="required">
			 </td>
		</tr>
		<tr>
			<td class="label2" colspan="2"><input type="submit" value="회원가입" />
			<input type="reset" value="다시작성" />
			</td>
		</tr>
		
	</table>
</form>
</body>
</html>

