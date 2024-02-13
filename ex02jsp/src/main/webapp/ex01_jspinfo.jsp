<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!-- 지시자 : 페이지 설정 page, include, taglib -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSP 구성요소 배우기</h1>
	
	<!-- 선언문 : 상수 선언, 메소드 정의, 서블릿에서 쓰는게 낫다 -->
	<%!
		int num2 = 10;
	
		//선언문 공간
		//service메소드 밖
		//전역변수처럼 사용 가능 
		public void show(){
			System.out.print("hello jsp");
		}
	%>
	
	<!-- 스클립틀릿 : 자바 문법 , //service메소드 안에 작성 -->
	<%
		int num1 = 10;
		System.out.print(num1);
		
		show();
	%>

	<!-- 표현식 : 출력 , 세미콜론 사용하지 않음-->
	<%-- JSP 주석, 외부에 노출되지 않음, 
	JSTL태그 사이에서 HTML주석은 오류가 나기 때문에 JSP주석 사용해야함 --%>
	num1은<%=++num1 %><br>
	num2는<%=++num2 %> 
	<!-- 선언문에서 만든 num2++은 실행할때마다 ++된다 
	선언문에서 선언한 변수는 톰캣이 처음 실행될때 한번만 실행되다. 
	값이 변하기 때문에 잘 사용안함  -->
	
</body>
</html>