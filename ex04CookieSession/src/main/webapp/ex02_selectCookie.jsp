<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 크롬에서 쿠키를 보기 불편하니 쿠키 조회해보자  -->
	<h1>쿠키 정보 조회</h1>
	<%	
		//쿠키를 지정할순 없고, 사용자가 가지고 있는 쿠키를 모두 가져와 조회한다
		//쿠키의 정보가 하나 이상이기 때문에 배열로 받아온다 
							//사용자에게.쿠키를 가져온다 
		Cookie[] cookies = request.getCookies();


		//예외처리
		//로그인 정보 출력하고 싶은데, 로그인정보가 없는 상태면 에러가 난다. 
		//로그인 정보가 없으면, 있다면 예외처리 해줘야함
		//쿠키가 있다면 
		if(cookies != null){
			for(int i=0; i<cookies.length; i++){
				//out.print : 객체는 개행하려면 태그로 적어야함
				out.print("이름 :"+cookies[i].getName()+"<br>");
				out.print("값 : "+cookies[i].getValue()+"<br><br>");
				
				//URL인코딩 방식으로 넘어온 값은 조회하려면 디코딩 해줘야함 
				String de = URLDecoder.decode(cookies[i].getValue(), "UTF-8");
				out.print("값 : "+de+"<br><br>");
			}			
		}
		//쿠키는 다른페이지로 넘길때 저장해둔다. 가져다 쓸 수 있음 
	%>
</body>
</html>