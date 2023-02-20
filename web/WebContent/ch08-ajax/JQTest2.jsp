<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JQuery 셀렉터와 메서드를 사용한 엘리먼트의 내용 변경</title>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script>
$(document).ready(function(){
	$('#b1').click(function(){  //button id=b1의 엘리먼트를 클릭하면 자동실행
		$('#b2').text($("p").text()); //두번째 버튼의 레이블 변경
	});
	
	$("#b2").click(function(){ //b2버튼을 클릭하면 자동실행
		$("#display").html("<img src='../images/myFace.png' border='0'/>");
	});
});
</script>
</head>
<body>
<p>이미지 표시 </p>
<button id="b1">버튼레이블 변경</button>
<div id="display"></div>
<button id="b2">버튼</button>
</body>
</html>

