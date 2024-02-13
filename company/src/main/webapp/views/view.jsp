<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>

<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>커뮤니티</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500&family=Jost:wght@500;600;700&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>

			
        	<p style="text-align:center; font-size: 30px; font-weight: 900; margin-top:revert;">게시글 보기</p>
        	<br>
		<form style="margin-left: 15rem; font-size: 20px;">    	
        <div class="form-group">
        	<span style="display:inline-block; width: 100px; height: 50px;">제목</span>
            <span style="background-color:#ecf0f1; width: 795px; border: 1px solid #ced4da; border-radius: 10px; display: inline-block;"></span>
        </div>
        <div class="form-group">
            <span style="display:inline-block ;width: 100px; ">작성자</span>
             <span style="background-color:#ecf0f1; width: 795px; border: 1px solid #ced4da; border-radius: 10px; display: inline-block;"></span>
           <br>
           <br>
        </div>
          <div class="form-group">
            <label for="exampleFormControlTextarea1">내용</label>
            <div class="form-control" id="exampleFormControlTextarea1" name="contents" text-align="center" style="background-color:#ecf0f1; width: 900px; height:200px;">
            	
            </div>
          </div>
        <!-- <button onclick="updateBoard()" class="btn btn-info" style ="background-color: light-green; margin:0 auto;" >수정하기</button> -->
		
			
		
		<div align="right" style="margin-right: 180px;">
			
			
			
		</div>
	</form>
	
	
	
	
	
    
  

        
        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-secondary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>


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
    
    <script type="text/javascript">
    
    
    </script>
</body>

</html>