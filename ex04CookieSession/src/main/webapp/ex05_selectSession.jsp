<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>세션 정보 조희</h1>
	<%
		//세션은 문자열로 저장해도 Object타입으로 형변환됨(모든 데이터 타입을 받는 최상위 클래스)
		//따라서 꺼낼때 다운캐스팅해야함
		//자식클래스 변수 = (자식클래스타입)부모타입의 데이터
		String id = (String)session.getAttribute("id"); //세션이름
		
		//세션이 null나올수있다, 디버깅 요소로 out전에 syso로 체크해주면 좋다 
		System.out.print("세션에 저장한 id : "+id);
		out.print(id); //세션값 출력
	%>
</body>
</html>