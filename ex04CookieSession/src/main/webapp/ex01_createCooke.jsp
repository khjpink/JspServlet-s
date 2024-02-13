<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키 실습</h1>
	<%
		//1.쿠키 객체 생성(쿠키이름,쿠키값은띄어쓰기없이)
		//Cookie cookie = new Cookie("cookieKHJ","HAPPY");

		//쿠키 인코딩하면 띄워쓰기 가능
		//URLEncoder.encode(인코딩할값, 인코딩방식)
		//인코딩한 쿠키는, 조회할때 디코딩 해줘야함
		//인코딩 : 컴퓨터가 이해할수 있는정보를,
		//디코딩 : 사람이 이해할 수 있또록 바꿔줌
		String value = "안녕 하세요";
		Cookie cookie = new Cookie("cookieKHJ",URLEncoder.encode(value, "UTF-8"));
		
		//쿠키 유효기간
		//브라우저 꺼도 쿠키 유지됨, 단 톰캣 돌아가고 있어야함
		cookie.setMaxAge(100); //3초
		
		//사용자에게 쿠키 전송
		response.addCookie(cookie);
	%>
</body>
</html>