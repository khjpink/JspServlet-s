<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>세션 정보 삭제</h1>
	<%
		//세션 하나 삭제	
		//삭제하면 세션이 null값이 된다
		session.removeAttribute("id"); //세션이름
		
		//세션 전체 삭제
		//session.invalidate();
		
		
	%>
</body>
</html>