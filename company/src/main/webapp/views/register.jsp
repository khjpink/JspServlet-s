<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>회원가입</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Header 불러오기 -->
  <%@ include file="./subHerder.jsp" %>
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

  <nav class="site-nav mb-5">
    <div class="pb-2 top-bar mb-3">
      <div class="container">
        <div class="row align-items-center">
          <!-- Navbar Content -->
        </div>
      </div>
    </div>
    <div class="sticky-nav js-sticky-header">
      <div class="container position-relative">
        <div class="site-navigation text-center">
          <!-- Navbar Items -->
          <a href="#" class="burger ml-auto float-right site-menu-toggle js-menu-toggle d-inline-block d-lg-none light"
            data-toggle="collapse" data-target="#main-navbar">
            <span></span>
          </a>
        </div>
      </div>
    </div>
  </nav>

  <div class="untree_co-hero inner-page overlay" style="background-image: url('images/img-school-5-min.jpg');">
    <div class="container">
      <div class="row align-items-center justify-content-center">
        <div class="col-12">
          <div class="row justify-content-center">
            <div class="col-lg-6 text-center">
              <h1><img src="../img/로고1.png" alt="Logo" width="400" height="100" margin-left: auto; margin-right: auto;>
              </h1>
              <hr>
              <h2>회원가입</h2>
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
          <form action="JoinCon" class="form-box" method="post">
            <div class="row">
              <div class="col-12 mb-3">
                <input type="text" class="form-control" name="id" placeholder="id">
              </div>
              <div class="col-12 mb-3">
                <input type="password" class="form-control" name="pw" placeholder="pw">
              </div>
              <div class="col-12 mb-3">
                <input type="text" class="form-control" placeholder="이름을 입력해 주세요." name="name">
              </div>
              <div class="col-12 mb-3">
                <input type="text" class="form-control" placeholder="전화번호를 입력해 주세요." name="tel">
              </div>
              <div class="col-12 mb-3">
                <input type="text" class="form-control" placeholder="이메일 주소를 입력해 주세요." name="email">
              </div>
              <div class="col-12 mb-3">
                <input type="text" class="form-control" placeholder="집 주소를 입력해 주세요." name="address">
              </div>
              <div class="text-center">
                <input type="submit" value="가입하기" class="btn btn-primary">
                <button class="btn btn-primary"><a href="index.jsp" style="color: white;">홈으로</a></button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  
  </body>

</html>
