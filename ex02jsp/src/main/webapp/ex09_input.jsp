<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/index.css" rel="stylesheet">
</head>
<body>
<%
	//post타입 인코딩
	request.setCharacterEncoding("UTF-8");

	//요청
	int item = Integer.parseInt(request.getParameter("item")); 
	System.out.print("item : "+item);

%>

<!-- jsp에서 작성한 데이터 jsp로 보내기 -->
<fieldset>
	<legend>랜덤당첨 작성</legend>
	<form action="ex09_result.jsp" method="post">
		주제 : <input type="text" name="subject"><br>
	<%
		for(int i=1; i<=item; i++){
		out.print("아이템"+i+":<input type='text' name='input'><br>");	
	} %>
		<input type="submit" value="시작">
	</form>
</fieldset>


</body>
</html>