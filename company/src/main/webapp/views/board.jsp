<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<!-- header 불러오기 -->
<%@ include file="./subHerder.jsp" %>

    <meta charset="utf-8">
    <title>커뮤니티</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

   
</head>

<body>
   
            <div class="container-xxl py-5 bg-primary hero-header">
                <div class="container my-5 py-5 px-lg-5">
                    <div class="row g-5 py-5">
                        <div class="col-12 text-center">
                            <h1 class="text-white animated slideInDown">Community</h1>
                            <hr class="bg-white mx-auto mt-0" style="width: 90px;">
                             
                             
                        </div>
                    </div>
                </div>
            </div>
     


        <!-- Service Start -->
        <!-- 게시판 시작 -->
        <div class="container">
            <div class="row table-div">
                <table class="table-setting" >
                    <thead>
                    <tr>
                    <th class ="th-setting" style="width: 10%">번호</th>
                    <th class ="th-setting" style="width: 50%">제목</th>
                    <th class ="th-setting" style="width:15%">작성자</th>
                    <th class ="th-setting" style="width :15%">작성일</th>
                    </tr>
                    </thead>
                    <tbody>
                   		 
                   		 
                    <%-- <%
						BoardDAO dao = new BoardDAO(); // 인스턴스 생성
						List<Board> list = dao.getList();
						for(int i = 0; i < list.size(); i++){
							String mem_id = dao.getmemId(list.get(i).getMem_no());
					
					%> --%>
					<tr>
						<%-- <td><%= list.get(i).getBd_num() %></td> --%>
						<!-- 게시글 제목을 누르면 해당 글을 볼 수 있도록 링크를 걸어둔다 -->
						<%-- <td><a href="view.jsp?bd_num=<%= list.get(i).getBd_num() %>">
							<%= list.get(i).getBd_title() %></a></td>
						<td><%= mem_id %></td>
						<td><%= list.get(i).getBd_date() %></td> --%>
					</tr>
					 
                    </tbody>
                    </table>
                    </div>
                    <!-- 글쓰기 버튼 생성 -->
                    <div align="right">
                    
                    <button class="btn write_btn" onclick="location.href='write.jsp'">글쓰기</button>
                    </div>
                    </div>
                <!-- 게시판 메인 페이지 영역 끝 -->
                
        
        
        


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-secondary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../lib/wow/wow.min.js"></script>
    <script src="../lib/easing/easing.min.js"></script>
    <script src="../lib/waypoints/waypoints.min.js"></script>
    <script src="../lib/counterup/counterup.min.js"></script>
    <script src="../lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="../lib/isotope/isotope.pkgd.min.js"></script>
    <script src="../lib/lightbox/js/lightbox.min.js"></script>

    <!-- Template Javascript -->
    <script src="../js/main.js"></script>
</body>
</html>