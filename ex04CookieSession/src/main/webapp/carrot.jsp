<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="index.css" rel="stylesheet">
</head>
<body>
 <!-- 체크한 값을 서블릿에서 쿠키값으로 넣는다   -->
	<div id="checklist">
		<h1>동물사료 당근마켓</h1>
		<!-- 서블릿 파일로 보내기!!! -->
		<form action="carrotList" method="post">
			<table border="1px solid">
				<tr>
					<td>동물</td>
					<td>가격</td>
					<td>장바구니에 담기</td>
				</tr>
				<tr>
					<td>고 양 이</td>
					<td>1000원</td>
					<td><input type="checkbox" name="check" value="고양이"></td>
				</tr>
				<tr>
					<td>강아지</td>
					<td>-1000원</td>
					<td><input type="checkbox" name="check" value="강아지"></td>
				</tr>
				<tr>
					<td>사막여우</td>
					<td>1000원</td>
					<td><input type="checkbox" name="check" value="사막여우"></td>
				</tr>
				<tr>
					<td>다람쥐</td>
					<td>1000원</td>
					<td><input type="checkbox" name="check" value="다람쥐"></td>
				</tr>
				<tr>
					<td>코알라</td>
					<td>1000원</td>
					<td><input type="checkbox" name="check" value="코알라"></td>
				</tr>
				<tr>
					<td colspan="3"><input type="submit" value="장바구니 담기"></td>
				</tr>
			</table>
		</form>
	</div>
	
	<div id="list">
		<h2>장바구니 목록</h2>
		<%
		//쿠키 조회
		
			//쿠키를 배열로 받아오기
			Cookie[] cookies = request.getCookies();

			//쿠키 값 출력
			 if(cookies != null) {
				for(int i=0; i<cookies.length; i++) {
					String name = URLDecoder.decode(cookies[i].getName(), "UTF-8");
					String value = URLDecoder.decode(cookies[i].getValue(), "UTF-8");
					 
					//쿠키 이름에 item이 포함됐다면 
					if(cookies[i].getName().contains("item")){
						out.print("쿠키 name: "+name+"<br>");
						out.print("쿠키 values: "+value+"<br><br>");	
					}
					
				}
			}//if끝
			 
			 
		%>
		
	<h1>쿠키 삭제</h1>
				
	</div>
</body>
</html>