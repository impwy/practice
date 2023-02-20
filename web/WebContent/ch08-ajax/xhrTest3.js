let xhrObject; //전역변수로 사용


/**
*XMLHTTPREQUEST 객체 생성 메서드.
*IE5이하, IE6 이상 크롬이나 다른 브라우저를 따로 만든다.
*/
function creatXHR(){
	if(window.ActiveXObject){
		xhrObject = new ActiveXObject("Microsoft.XMLHTTP");
	}else if(window.XMLHttpRequest){
		xhrObject = new XMLHttpRequest();
	}
}

/** 
 * XMLHTTPREQUEST가 만들어지면
 * 연결된 경로를 통해 파일을 가져온다.
 */
function startMethod(){
	creatXHR();
	xhrObject.onreadystatechange = resultProcess;
	xhrObject.open("POST","xhrTest3.txt");
	xhrObject.send(null);
}

/**
 * JSON데이터 처리 로직
 * */
function processJSON(){
	
	//xhrObject에서 받은 텍스트를 result에 저장
	const result = xhrObject.responseText;
	
	//result에 ()괄호 추가
	let objResult = eval( '(' + result + ')');
	
	//objResult의 길이를 num으로 변수처리
	const num = objResult.members.length;
	
	
	//for문을 돌려 변수 str에 objRsult로 받은 정보로 
	//table태그를 만든다.
	let str = "<table border = '1'>";
	for(let i = 0; i < num; i++){
		str += "<tr>";
		
		str+= "<td>" + objResult.members[i].memberNumber + "</td>";
		
		str += "<td>" + objResult.members[i].irum + "</td>";
		
		str+= "<td><img src ='" + objResult.members[i].picture;
		str += "' width='50' height = '60'/></td></tr>";
	}
	
	str+="</table>";
	
	document.getElementById("resultArea").innerHTML = str;
}

//연결이 성공적으로 이루어지면 processJSON()메서드를 실행시킨다.
function resultProcess(){
	
	if(xhrObject.readyState == 4 && xhrObject.status == 200){
		processJSON();
	}
		
}