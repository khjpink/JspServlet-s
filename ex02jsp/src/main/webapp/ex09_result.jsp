<%@page import="java.util.Random"%>
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
	//post타입 인코딩
	request.setCharacterEncoding("UTF-8");
%>

<fieldset>
	<legend>랜덤당첨 결과</legend>
	<%
		String subject = request.getParameter("subject");
		out.print("주제:"+subject+"<br>");
	%>
	
<!-- 아이템을 배열로 받아와서, 인덱스 랜덤으로 뽑아서 출력  -->	
	<%
		//파라미터 받아오기
		String[] input = request.getParameterValues("input");
		//랜덤 객체 생성
		Random random = new Random();

		//0부터 랜덤 숫자 범위를 배열의 길이만큼
		int index = random.nextInt(input.length); 
		
		
		//랜덤 당첨 출력
		out.print("<h1>"+input[index]+"</h1>");	
		
	%>

</fieldset>

</body>
</html>