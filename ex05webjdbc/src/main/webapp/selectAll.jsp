<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
	<h1>회원 전체 검색 페이지</h1>
<%
	//jdbc연결---
	//객체 만들기
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String dbid = "hr";
		String dbpw = "1234";
		conn = DriverManager.getConnection(url, dbid, dbpw);
	
		if(conn != null) {
			System.out.println("DB연결 성공");
		}else {
			System.out.println("DB연결 실패");
		}
		
		String sql = "SELECT * FROM MEMBER_WEB";
		psmt = conn.prepareStatement(sql);
		 
		//레코드 한줄을 리졸트셋이라고 한다. INT로 담을 수 없다.
		rs = psmt.executeQuery();
		
		//rs.next() : 데이터 한줄한줄씩 비교한다음에, 3번재에 id가 있다면, f,f,true하고 값을 돌려줌
			out.print("<table border='1px'>");
			out.print("<tr>");
			out.print("<td>사용자 ID</td>");
			out.print("<td>사용자 NICK</td>");
			out.print("</tr>");
		//rs에 담긴 정보 출력(컬럼위치인덱스or컬럼명)
		while(rs.next() == true) {
			System.out.println("전체 회원 검색 성공!!!");
			
			String uid = rs.getString("id");
			String unick = rs.getString("nick");
			out.print("<tr>");
			out.print("<td>"+uid+"</td>");
			out.print("<td>"+unick+"</td>");
			out.print("</tr>");
		}//while문 끝
			out.print("<table>");
		
	} catch (Exception e) {
		e.printStackTrace();
	}finally {
		try {
			if(psmt != null) psmt.close();
			if(conn != null) conn.close();				
		}catch(Exception e2) {
			e2.printStackTrace();
		}
	}
%>
</body>
</html>