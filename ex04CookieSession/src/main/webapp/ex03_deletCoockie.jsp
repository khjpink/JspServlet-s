<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키 삭제</h1>
	<%
	
		//쿠키 만들기
		//쿠키의 값을 없애기, ""으로 작성	
		Cookie cookie = new Cookie("cookieKHJ",""); 
 	
		//쿠키 유효기간 0으로 만들어서 쿠키 삭제 
		cookie.setMaxAge(0);
		
		//사용자 전송 보내주기
		response.addCookie(cookie); 
	%>
</body>
</html>