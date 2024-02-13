<%@page import="Model.MemberVO"%>
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
	//로그인 세션 가져오기
	//멤버vo형태로 담기 (맴버vo형변환)
	MemberVO vo = (MemberVO)session.getAttribute("voName");
	
	//이때 첫 방문시에는 세션이 없기 때문에 예외처리해주기
	if(vo == null){
		out.print("<h1>메인 페이지</h1>");	
	}else{
		out.print("<h1>"+vo.getId()+"환영합니다.</h1>");
	}
%>
	<a href="#"><button>회사소개</button></a>
	<a href="#"><button>메뉴</button></a>
	<a href="#"><button>문의</button></a>

	<!-- 로그인 상태에서만 로그아웃 버튼 보여주기. 세션으로 -->
<%	if(vo == null){ %>
		<a href="login.html"><button>로그인</button></a>	
<%	}else{%>
		<a href="LogoutCon"><button>로그아웃</button></a>		
<%	} %>




</body>
</html>