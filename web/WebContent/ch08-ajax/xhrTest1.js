//xhrObject를 전역변수로 설정하여 js내에서 전부 사용할 수 있게 한다.
let xhrObject;

function createXHR(){  //XMLHttpRequest 객체 생성 메서드
	
	//웹 브라우저가 IE6 이하인경우
	if(window.ActiveXObject){
	xhrObject = new ActiveXObject("Microsoft.XMLHTTP");
	  	}
	//웹 브라우저가 IE6 이상 크롬 등 다른 브라우저일 경우
	else if(window.XMLHttpRequest){
		xhrObject = new XMLHttpRequest();
	  	}
	}

	//클라이언트 실행 메서드
function startMethod(){
	//XMLHttpRequest 생성
	createXHR();
	//응답 결과를 resultProcess()로 처리함
	xhrObject.onreadystatechange = resultProcess;
	
	//XHR열고 보내기
	xhrObject.open("GET","xhrTest1.xml");
	xhrObject.send(null);
}

function resultProcess(){
	if(xhrObject.readyState == 4 && xhrObject.status == 200 ){
		document.getElementById('displayArea').innerHTML = xhrObject.responseText;
	}
}