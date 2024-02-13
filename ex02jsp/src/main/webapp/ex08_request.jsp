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
	//인코딩
	request.setCharacterEncoding("UTF-8");

	// html 데이터 가져오기
	String name = request.getParameter("name");
	int java =  Integer.parseInt(request.getParameter("JAVA"));
	int web =  Integer.parseInt(request.getParameter("WEB"));
	int iot =  Integer.parseInt(request.getParameter("IOT"));
	int android =  Integer.parseInt(request.getParameter("ANDROID"));

	//평균
	int sum = java+web+iot+android;
	int avg = sum/4;
	System.out.println("평균 : "+avg);
	
	
	//학점
	String ck = "없음";
	
	switch(avg){
		case 90:
			ck = "A";
			break;
		case 80:
			ck = "B";
			break;
		default:
			ck = "C";
			break;
	}
	System.out.print("학점 : "+ck);
%>
		<fieldset>
			<legend>성적확인프로그램 결과</legend>
			<table width="500">	
				<tr>
					<td>이름</td>
					<td><%=name%></td>
				</tr>
				<tr>
					<td>JAVA점수</td>
					<td><%=java %></td>
				</tr>
				<tr>
					<td>WEB점수</td>
					<td><%=web %></td>
				</tr>
					<tr>
					<td>IOT점수</td>
					<td><%=iot %></td>
				</tr>		
				<tr>
					<td>ANDROID점수</td>
					<td><%=android%></td>
				</tr>		
				<tr>
					<td>평균</td>
					<td><%=avg%></td>
				</tr>
				<tr>
					<td>학점</td>
					<td><%=ck%>학점 입니다</td>
				</tr>																					
			</table>
		</fieldset>
		
</body>
</html>