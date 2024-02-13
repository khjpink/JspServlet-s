<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>스코프 값 확인하기 ex02</h1>
	<%
	
		//페이지에 문자열을 넣었기 때문에 string으로 형변환
		//page라는 변수는 있어서 사용불가
		String page2 = (String)pageContext.getAttribute("page");
	
		//세션은 오브젝트 타입으로 변환되기 때문에 가져오려면 형변환 필요
		String req = (String)request.getAttribute("request");
		
		String se = (String)session.getAttribute("session");
		
		String app = (String)application.getAttribute("application");
		
		out.print("page 값 "+page2+"<br>");
		out.print("request 값 "+req+"<br>");
		out.print("session 값 "+se+"<br>");
		out.print("appliceion 값 "+app+"<br>");
	%>

</body>
</html>