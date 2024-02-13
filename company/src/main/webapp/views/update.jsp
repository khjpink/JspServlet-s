<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!-- /*
* Template Name: Learner
* Template Author: Untree.co
* Tempalte URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>회원 정보 수정</title>
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
    <link href="../lib/lightbox/css/lightbox.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="../css/style.css" rel="stylesheet">
</head>

<body>

  <div class="site-mobile-menu">
    <div class="site-mobile-menu-header">
      <div class="site-mobile-menu-close">
        <span class="icofont-close js-menu-toggle"></span>
      </div>
    </div>
    <div class="site-mobile-menu-body"></div>
  </div>


  
  
  

  <div class="untree_co-hero inner-page overlay" style="background-image: url('images/img-school-5-min.jpg');">
    <div class="container">
      <div class="row align-items-center justify-content-center">
        <div class="col-12">
          <div class="row justify-content-center ">
            <div class="col-lg-6 text-center ">
              <h1><img src="../img/로고1.png" alt="Logo"  width="400" height="100"  margin-left: auto; margin-right: auto;></h1>
              <hr>
              <h1>회원정보 수정</h1>

            </div>
          </div>
        </div>
      </div> <!-- /.row -->
    </div> <!-- /.container -->

  </div> <!-- /.untree_co-hero -->




  <div class="untree_co-section">
    <div class="container">

      <div class="row mb-5 justify-content-center">
        <div class="col-lg-5 mx-auto order-1" data-aos="fade-up" data-aos-delay="200">
          
          <form action="UpdateCon" class="form-box">
            <div class="row">
              <div class="col-12 mb-3">
                <input type="text" class="form-control" placeholder="${$loginMember.mem_id}" value="${loginMember.mem_id}">
              </div>
              <div class="col-12 mb-3">
                <input type="password" class="form-control" placeholder="Password" value="${loginMember.mem_pw}" name="pw">
              </div>
              <div class="col-12 mb-3">
                <input type="password" class="form-control" placeholder="Re-Password" value="${loginMember.mem_pw}" >
              </div>
              <div class="col-12 mb-3">
                <input type="text" class="form-control" placeholder="Name" value="${loginMember.mem_name}" name="name">
              </div>
              <div class="col-12 mb-3">
                <input type="text" class="form-control" placeholder="tel" value="${loginMember.mem_tel}" name="tel">
              </div>
              <div class="col-12 mb-3">
                <input type="text" class="form-control" placeholder="email" value="${loginMember.mem_email}" name="email">
              </div>
      
              <div class="text-center">
              	<input type="submit" value="수정" class="btn btn-primary">
                <button class="btn btn-primary"><a href="index.jsp" style="color: white;">취소</a></button>
                
              </div>
            </div>
          </form>
        </div>
      </div>

      
    </div>
  </div> <!-- /.untree_co-section -->

  <div class="site-footer">
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
<script src="../js/main.js"></script>
  </body>

  </html>