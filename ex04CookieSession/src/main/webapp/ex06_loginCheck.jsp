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
	<fieldset>
		<legend>확인</legend>
		
		<%
			//post 인코딩
			request.setCharacterEncoding("UTF-8");
		
			//요청
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			
			System.out.println("id : "+id);
			System.out.println("pw : "+pw);
			
			if(id.equals("smhrd") && pw.equals("12345")){
				//닉네임 세션에 저장하기
				session.setAttribute("nick", "김현정");
				
				//로그인 성공 후 페이지 이동
				//response.sendRedirect("ex06_main.jsp");
				
				//데이터 넘길때 url 쿼리스트링으로 넘기기
				//form태그 get방식 넘길때 쿼리스트링으로 나온다,
				//쿼리스트링 받는쪽에서는 name값을 nick2로 해서 getParameter로 받을 수 있다
				//쿼리스트링은 게시판index 넘길때 사용
				String nick2 = URLEncoder.encode("파인애플2", "UTF-8");
				response.sendRedirect("ex06_main.jsp?nick2="+nick2);

			//로그인 실패했다면
			}else{
				response.sendRedirect("ex06_loginForm.jsp");
			}
		%>
			<%-- id : <%= id %><br>
			password : <%= pw %><br>
			
			<form action="ex06_main.jsp" method="post">
				닉네임 <input type="text" name="nickname">
				<input type="submit" value="전송">
			</form> --%>

	</fieldset>
</body>
</html>