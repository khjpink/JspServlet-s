<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>세션 정보 저장</h1>
	<%
		//세션 : 서버에 정보를 저장 할 수 있는 내장객체 영역(scope) 중 하나
		//Servlet에서 session을 사용할 경우에는 HttpSession 객체를 생성 한 후에 사용할 수 있다

		//세션 정보 저장
		session.setAttribute("id", "smart");//"세션이름","세션값"

		//세션 유효기간 설정
		//세션은 웹브라우저가 꺼지면 종료됨, 남아있는건 쿠키임
		session.setMaxInactiveInterval(3);
		
		
	%>
</body>
</html>