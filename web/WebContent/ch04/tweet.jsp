<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import="java.util.*,java.text.*"
%>

<!DOCTYPE html>
<%
	//한글 변환
	request.setCharacterEncoding("UTF-8");
	
	//HTML 폼 에서 name이 msg인 값을 변수 msg에 저장
	String msg = request.getParameter("msg");
	
	//session에 저장된 user란 name의 값을 Object type의 username에 저장
	Object username = session.getAttribute("user");
	
	//메세지 저장을 위해 application 객체에 msg란 name의 값을 ArrayList msgs에 저장
	ArrayList<String> msgs = (ArrayList)application.getAttribute("msgs");
	
	//메세지가 null인 경우 새로운 msgs의 ArrayList 생성
	if(msgs == null){
		msgs = new ArrayList<String>();
		//새로운 ArrayList에 메세지 저장
		application.setAttribute("msgs", msgs);
	}
	//사용자의 이름, 메세지, 날짜 정보를 ArrayList에 추가
	Date date = new Date();
	SimpleDateFormat f = new SimpleDateFormat("MM월 dd일 E요일 HH:mm",Locale.KOREA);
	msgs.add(username +" :: " + msg + " , " + f.format(date));
	
	//톰캣 콘솔을 통해 로그를 확인함
	application.log(msg + "추가됨");
	
	//목록 화면으로 보냄.
	response.sendRedirect("twitter_list.jsp");
%>

<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

</body>
</html>

