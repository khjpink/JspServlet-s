	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<head>
    <meta charset="utf-8">
    <title>DGital - Digital Agency HTML Template</title>
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


  
  
  

  <div class="untree_co-hero inner-page overlay" style="background-image: url('images/img-school-5-min.jpg');">
    <div class="container">
      <div class="row align-items-center justify-content-center">
        <div class="col-12">
          <div class="row justify-content-center ">
            <div class="col-lg-6 text-center ">
              <h1><img src="../img/로고1.png" alt="Logo"  width="400" height="100"  margin-left: auto; margin-right: auto;></h1>
              <hr>
              <h2 class="mb-4 heading text-white" data-aos="fade-up" data-aos-delay="100">로그인</h2>

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
          
          
          
          
          
          <!-- 로그인 폼 -->
          <form action="LoginCon" class="form-box" method="post">
            <div class="row">
              <div class="col-12 mb-3">
                <input type="text" class="form-control" placeholder="ID" name="id">
              </div>
              <div class="col-12 mb-3">
                <input type="password" class="form-control" placeholder="Password" name="pw">
              </div>

              <div class="col-12 mb-3">
                <label class="control control--checkbox">
                  <span class="caption">Remember me</span>
                  <input type="checkbox" checked="checked" />
                  <div class="control__indicator"></div>
                </label>
              </div>
      
              <div class="text-center">
                <input type="submit" value="로그인" class="btn btn-primary">
                <button class="btn btn-primary"><a href="register.html" style="color: white;">회원가입</a></button>
                <button class="btn btn-primary"><a href="index.jsp" style="color: white;">홈으로</a></button>
              </div>
            </div>
          </form>
        </div>
      </div>

      
    </div>
  </div> <!-- /.untree_co-section -->

  </body>

  </html>
</body>
</html>