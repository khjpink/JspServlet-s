<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>채용정보</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="../img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500&family=Jost:wght@500;600;700&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="../lib/animate/animate.min.css" rel="stylesheet">
    <link href="../lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="../lib/lightbox/;css/lightbox.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="../css/style.css" rel="stylesheet">
</head>

<body>


        <!-- Service Start -->
        <!-- 게시판 시작 -->
           <input type="text" class="form-control" name="search" placeholder="검색어를 입력해 주세요." >
                <button class="btn btn-primary" >검색</button>
        <div class="container">
            <div class="row table-div">
                <table class="table-setting" >
                    <thead>
                    <tr>
                    <th class ="th-setting" style="width: 10%">번호</th>
                    <th class ="th-setting" style="width: 50%">제목</th>
                    <th class ="th-setting" style="width:15%">작성자</th>
                    <th class ="th-setting" style="width :15%">작성일</th>
<!--                <th class ="th-setting" style="width: 5%">번호</th>
                    <th class ="th-setting" style="width: 10%">회사명</th>
                    <th class ="th-setting" style="width: 50%">공고명</th>
                    <th class ="th-setting" style="width:15%">주소</th>
                    <th class ="th-setting" style="width:10%">작성자</th>
                    <th class ="th-setting" style="width :10%">작성일</th> -->
                    </tr>
                    </thead>
                    <tbody>
<!--                          <tr>
                    		<td>5</td>
                    		<td>스마트인재개발원</td>
                    		<td>📢커뮤니티 이용 시 주의사항(필독!!)</td>
                    		<td>전남 순천시</td>
                    		<td>관리자</td>
                    		<td>2020-07-13</td>
                    	</tr> -->
                        <tr>
                    		<td>4</td>
                    		<td>📢현직자 멘토를 모집합니다.</td>
                    		<td>관리자</td>
                    		<td>2020-07-13</td>
                    	</tr>
                   		 <tr>
                    		<td>3</td>
                    		<td>00기업 신입 및 경력 채용공고</td>
                    		<td>관리자</td>
                    		<td>2020-07-14</td>
                    	</tr>
                         <tr>
                    		<td>2</td>
                    		<td>00기업 신규 채용 공고</td>
                    		<td>관리자</td>
                    		<td>2020-07-15</td>
                    	</tr>
                    	<tr>
                    		<td>1</td>
                    		<td>00기업 신입 및 경력 채용공고</td>
                    		<td>관리자</td>
                    		<td>2020-07-16</td>
                    	</tr>
                    </tbody>
                    </table>
                    </div>
                    <!-- 글쓰기 버튼 생성 -->
                    <div align="right">
                    <button class="btn write_btn" onclick="location.href='recruitmentWrite.jsp'">글쓰기</button>
                    </div>
                    </div>
                <!-- 게시판 메인 페이지 영역 끝 -->
                
        
        
        


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-secondary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/isotope/isotope.pkgd.min.js"></script>
    <script src="lib/lightbox/js/lightbox.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>
</html>