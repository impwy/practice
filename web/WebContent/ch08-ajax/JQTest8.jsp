<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JQeury & Ajax - ajax() 메서드 사용</title>
<style>
	#result{
		width : 200px;
		height : 200px;
		border : 5px double #668339;
	}
</style>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script>
	$(document).ready(function(){
		$("#b1").click(function(){
			
			//post에 같이 넘길 데이터 설정
			let query = {name : "kingdora",
						 stus : "homebody"};
			//jquery - ajax 메서드 실행
			$.ajax({
				
				//연결 방식설정
				method : "POST",
				
				//연결 파일 설정
				url : "process.jsp",
				
				//보내줄 데이터
				data : query,
				
				//요청에 응답한 데이터 처리
				success : function(repsdata){  
					$("#result").html(repsdata);
				}
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

