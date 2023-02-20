<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>$.ajax()메서드</title>
<style>
	#result{
		width : 200px;
		height : 200px;
		border : 5px double #123123;
	}
</style>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
</head>
<body>
	<dl>
	<dd>
		<label for="name">이름</label>
		<input type="text" id="name" name="name" placeholder="김철수" autofocus required />
		</dd>
		<dd>
		<button id="pro">처리</button>
		</dd>
	</dl>
	<div id="result"></div>
</body>
<script type="text/javascript">
	$(document).ready(function(){
		$("#pro").click(function(){
			let query = {name: $("#name").val()};
			
			$.ajax({
				type : "POST",
				url : "ex08_03Pro.jsp",
				data : query,
				success : function(data){
					$("#result").text(data);
				}
			});
		});
	});
</script>
</html>

