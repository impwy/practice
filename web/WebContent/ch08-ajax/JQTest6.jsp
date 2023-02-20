<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
	#result{
		width : 300px;
		height : 300px;
		border : 5px double #008855;
	}
</style>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script>
	$(document).ready(function(){
		$("#b1").click(function(){
			
			//xhrTest3.txt를 get방식으로 요청하는 메서드
			$.get("xhrTest3.txt",function(data,status){
				//data : xhrTest3.txt의 내용 status: 처리상태
				let resultStr = "데이터 : "+ data + "처리상태 : "+ status;
				$("#result").text(resultStr);
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

