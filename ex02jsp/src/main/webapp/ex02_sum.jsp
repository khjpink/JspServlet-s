<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>1부터 100까지 합을 구하기</h1>

<%
	int sum = 0;
	
	for(int i=1; i<=100; i++){
		sum +=i;
	}
	
	System.out.print("합계 : "+sum);  
%>

<h1><%=sum %></h1>


</body>
</html>