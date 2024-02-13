<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>스코프에 값 저장하기 ex01</h1>
<%	
//저장한 값을 조회

	// 한 페이지 내에서만 유지
	pageContext.setAttribute("page", "페이지 스코프"); // 이름, 값

	//한번의 요청이 갔을때 유지되는 용역
	request.setAttribute("request", "리퀘스트");
	
	//웹브라우저가 꺼져있지 않고, 톰캣이 유지하고 있는 영역
	//쿠키에 세션의id가 닮겨있다. 쿠키 삭제하면 세션유지 불가
	session.setAttribute("session", "세션");
	
	//톰캣 돌아가고 잇는 한 유지되는 영역
	//톰캣 리스타트 하면 영역이 유지되지 않음
	application.setAttribute("application", "어플리케이션");
%>

	<h1>스코프 값 확인하기</h1>
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
	
	<%
		//한번의 요청이 끝나도 값을 유지할 수 없을까?
		//ex2.jsp 로 갈때 request영역에 값을 유지하는법------ 
			//유지될수있도록 하는 옮겨다니는 객체
			//리퀘스트야 가져다줘. 스트링타입 패스로 ) 리퀘스트디스페처 객체로 담아줌  
			//리퀘스트야 . ex02페이지로 이동할때 가져다줘. 
		RequestDispatcher rd = request.getRequestDispatcher("ex02_selectScope.jsp");
		
		//페이지 이동하는 방식이 response.sendRediret랑 forward 중에 포워드는 req 값을 유지한채 이동
		//리퀘스트디스페처는 옮겨다닐때 리퀘스트,리스폰스 가지고 감
			//jsp에서는 내장객체가 만들어져 있기 때문에 
			//포워드 방식으로 넘어가면 리퀘,리스 가지고 넘어감
		rd.forward(request, response);
		
		//포워드 : 이전url 유지, 리퀘스트 정보 유지
			//포워드 방식은 url을 바꾸지 않는다, 여기서 실행하면 ex02로 페이지로 열린다. url은 그대로고
			//실행하면 ex01에서 ex02로 갔다. ex02에서는 정보가 유지 되지 않음 
		//리퀘스트 : 이동한 url로 변경, 브라우저를 끄지 않는한 세션을 통해 정보를 보낼 수 있다 
		
		
		

	/*
		RequestDispatcher rd = request.getRequestDispatcher("ex02_selectScope.jsp");
		request.setAttribute("vo", vo);
		//String req = (String)request.getAttribute("request"); 안하고 바로 값 넘겨주기
		rd.forward(request, response);
	*/
	%>	
</body>
</html>