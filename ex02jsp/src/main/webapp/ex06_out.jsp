<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>out객체 이용하기</h1>
<%
//out은 내장객체로 웹페이지 정보 출력 
	for(int i=0; i<10; i++){
		out.print("<h1>반복중</h1>");
	}
	String test = "이것은 out.write로 나오는지";
%>
<%= test %>
</body>
</html>