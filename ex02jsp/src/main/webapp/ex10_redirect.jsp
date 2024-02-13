<%@page import="javax.print.attribute.standard.MediaPrintableArea"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//response.forword
		
		//response : 사용자에게 응답하는 객체 
		//html에서 요청은 ex10_redirect.jsp로 했는데 
		//sendRedirect를 하면 응답은 naver로 바뀐다 된다 
		response.sendRedirect("https://www.naver.com");
  
	%>
	
</body>
</html>