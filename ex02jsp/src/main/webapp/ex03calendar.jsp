<%@page import="java.util.Calendar"%>
<%@page import="java.util.GregorianCalendar"%>
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
	<h1>현재 시간 출력하기</h1>
	<%
		GregorianCalendar cal = new GregorianCalendar();
		
	%>
	
	<%=cal.get(Calendar.YEAR) %>년
	<%=cal.get(Calendar.MONTH)+1 %>월
	<%=cal.get(Calendar.DATE) %>일
	<%=cal.get(Calendar.HOUR) %>시
	<%=cal.get(Calendar.MINUTE) %>분
	<%=cal.get(Calendar.SECOND) %>초
	
	<h2>자바스크립트 시간</h2>
	<h2 id="clock"></h2>
	
	<script type="text/javascript">
	const clock = document.getElementById("clock");

	function getClock(){
	  const now = new Date();	// 현재 날짜 및 시간
	  const hour = now.getHours();
	  const minutes = now.getMinutes();
	  const seconds = now.getSeconds();
	  clock.innerText = `${hour}:${minutes}:${seconds}`;
	}
	getClock();
	setInterval(getClock, 1000);
	</script>
</body>
</html>