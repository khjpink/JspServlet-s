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
		//요청
		//String nickValus = request.getParameter("nickname");
		String nick2 = request.getParameter("nick2"); //요청-쿼리스트링
		
		//닉네임 세션에 저장하기
		//session.setAttribute("nick", nickValus);
		
		//유효기간
		//session.setMaxInactiveInterval(1000);

		//닉네임 세션 조회
		String nick = (String)session.getAttribute("nick");
		System.out.println("nick :"+nick);
	%>
	
	<fieldset>
		<legend><%=nick %>님 환영합니다. (이 정보는 로그아웃하기전까진 유지되는 세션닉네임,)<br>
				즉, 로그아웃 하면 위 데이터에 대한 세션만 삭제하는거다	<br>
				<%=nick2 %>님~(url 쿼리스트링 파라미터 출력)	
		</legend>
		<a href="ex06_logout.jsp" >로그아웃</a>
		<!-- <input type="button" value="로그아웃" onclick="location.href='ex06_logout.jsp'"> -->
	</fieldset>

</body>
</html>