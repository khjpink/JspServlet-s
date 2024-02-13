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
	//세션 삭제
	session.removeAttribute("nick"); 
	
	//로그아웃 후 로그인 jsp로 이동 
	response.sendRedirect("ex06_loginForm.jsp");
	%>
	
</body>
</html>