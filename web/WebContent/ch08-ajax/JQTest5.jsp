<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JQTest Ajax메서드 - load() 응답처리</title>
<style>
	#result{
		width:600px;
		height:100px;
		border : 5px double #6699FF;
	}
</style>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script>
	$(document).ready(function(){
		
		$("#b1").click(function(){
			
			$("#result").load("xhrTest3.txt",function(response,stu,xhr){
				if(stu=="success")
					alert("로드 성공!");
				if(stu=="error")
					alert("에러:"+xhr.status+": "+xhr.stu);
			});
		});
	});
	
</script>
</head>
<body>
<button id="b1">결과</button>
<div id="result"></div>
</body>
</html>

