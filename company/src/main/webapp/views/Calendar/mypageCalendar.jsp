<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
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
    
    
    <title>Calendar</title>
    <link rel="shortcut icon" href="image/favicon.ico">

    <link rel="stylesheet" href="vendor/css/fullcalendar.min.css" />
    <link rel="stylesheet" href="vendor/css/bootstrap.min.css">
    <link rel="stylesheet" href='vendor/css/select2.min.css' />
    <link rel="stylesheet" href='vendor/css/bootstrap-datetimepicker.min.css' />

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <link rel="stylesheet" href="css/main.css">
    
    <style>
     .checkbox-inline{display:inline-block; width:100px; line-height:20px; }
    </style>
    

</head>

<body>
      <div class="container-xxl bg-white p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-grow text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->

        <!-- Navbar & Hero Start -->
          <div class="container-xxl position-relative p-0">
            <nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0">
                <a href="../index.jsp" class="navbar-brand p-0">
                    <img src="/Project/img/그림1.png">
                    <!-- <img src="img/logo.png" alt="Logo"> -->
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="fa fa-bars"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav mx-auto py-0">
                         <a href="/Project/index.jsp" class="nav-item nav-link active">Home</a>
                        <a href="/Project/recruitment.jsp" class="nav-item nav-link">채용정보</a>
                        <a href="/Project/Calendar/Calendar.jsp" class="nav-item nav-link">자격증 캘린더</a>
                        <a href="/Project/academy.jsp" class="nav-item nav-link">주변학원찾기</a>
                        <a href="/Project/board.jsp" class="nav-item nav-link">커뮤니티</a>
                        
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">마이페이지</a>
                            <div class="dropdown-menu m-0">
                                <a href="/Project/Calendar/mypageCalendar.jsp" class="dropdown-item">캘린더</a>
                                <a href="/Project/mypage.jsp" class="dropdown-item">관심 자격증</a>
                                <a href="/Project/update.jsp" class="dropdown-item">회원정보 수정</a>
                            </div>
                        </div>
                    </div>
                                  
              </div>
                  <c:choose>
                  <c:when test="${empty loginMember}">
                     <a href="../login.jsp" class="btn rounded-pill py-2 px-4 ms-3 d-none d-lg-block">로그인 </a>
                     <a href="../register.jsp" class="btn rounded-pill py-2 px-4 ms-3 d-none d-lg-block">회원가입</a>
                  </c:when>
                  <c:otherwise>
                     <!-- 문자열 비교는 eq -->
                     <c:if test="${loginMember.mem_id eq 'admin' }">
                        <a href="../select.jsp" class="btn rounded-pill py-2 px-4 ms-3 d-none d-lg-block">회원관리</a>
                        <a href="../LogoutCon" class="btn rounded-pill py-2 px-4 ms-3 d-none d-lg-block">로그아웃</a>
                     </c:if>
                     <c:if test="${loginMember.mem_id ne 'admin' }">
                        <span>${loginMember.mem_id}님 환영합니다~</span>
                        <a href="../LogoutCon" class="btn rounded-pill py-2 px-4 ms-3 d-none d-lg-block">로그아웃</a>
                     </c:if>
                	 </c:otherwise>
               		 </c:choose>
              
              	 </nav>
                </div>
    
    
    
    
    
    
    
    <div class="container">
        <div class="panel panel-default">

            <div class="panel-heading">
                <h3 class="panel-title">필터</h3>
            </div>

            <div class="panel-body">

                <div class="col-lg-6">
                    <label for="calendar_view">자격증목록</label>
                    <div class="input-group">
                        <select class="filter" id="type_filter" multiple="multiple">
                            <option value="방수기능사">방수기능사</option>
                            <option value="로더운전기능사">로더운전기능사</option>
                            <option value="건축도장기능사">건축도장기능사</option>
                            <option value="장례지도사">장례지도사</option>
                            <option value="경비지도사">경비지도사</option>
                            <option value="레진공예자격증">레진공예자격증</option>
                            <option value="관광통역안내사">관광통역안내사</option>
                            <option value="용접기능사">용접기능사</option>
                            <option value="펀드투자권유자문인력">펀드투자권유자문인력</option>
                            <option value="기계정비산업기사">기계정비산업기사</option>
                            <option value="영사산업기사">영사산업기사</option>
                            <option value="PC정비사">PC정비사</option>
                            <option value="공조냉동기계기사">공조냉동기계기사</option>
                            <option value="생산자동화기능사">생산자동화기능사</option>
                            <option value="기계설계산업기사">기계설계산업기사</option>
                            <option value="재경관리사 ">재경관리사</option>
                            <option value="유기농업기능사">유기농업기능사</option>
                            <option value="교통기술사">교통기술사</option>
                            <option value="실내디자이너">실내디자이너</option>
                            <option value="박물관및미술관준학예사">박물관및미술관준학예사</option>
                            <option value="컬러리스트기사">컬러리스트기사</option>
                            <option value="GTQ">GTQ</option>
                            <option value="공인노무사">공인노무사</option>
                            <option value="수질환경기사">수질환경기사</option>
                            <option value="반려동물관리사">반려동물관리사</option>
                            <option value="투자자산운용사">투자자산운용사</option>
                            <option value="공인중개사">공인중개사</option>
                            <option value="국방사업관리사">국방사업관리사</option>
                            <option value="노인심리상담사">노인심리상담사</option>
                            <option value="산업안전기사">산업안전기사</option>
                            <option value="가스기사">가스기사</option>
                            <option value="청소년상담사">청소년상담사</option>
                            <option value="smat서비스경영자격">smat서비스경영자격</option>
                            <option value="화공기사">화공기사</option>
                            <option value="항해사">항해사</option>
                            <option value="세탁기능사">세탁기능사</option>
                            <option value="수상구조사">수상구조사</option>
                            <option value="손해평가사">손해평가사</option>
                            <option value="컴퓨터응용선반기능사">컴퓨터응용선반기능사</option>
                            <option value="필라테스지도사">필라테스지도사</option>
                            <option value="바리스타자격증">바리스타자격증</option>
                            <option value="떡제조기능사">떡제조기능사</option>
                            <option value="수질환경기사">수질환경기사</option>
                            <option value="텔레마케팅관리사">텔레마케팅관리사</option>
                            <option value="용접기능사">용접기능사</option>
                            <option value="간호조무사">간호조무사</option>
                            <option value="샵마스터(3급)">샵마스터(3급)</option>
                            <option value="반려견스타일리스트">반려견스타일리스트</option>
                            <option value="3D프린터개발산업기사">3D프린터개발산업기사</option>
                            <option value="산림기사">산림기사</option>
                            <option value="자동차보수도장기능사">자동차보수도장기능사</option>
                            <option value="굴착기운전기능사">굴착기운전기능사</option>
                            <option value="수질환경기사">수질환경기사</option>
                            <option value="재경관리사">재경관리사</option>
                            <option value="CAD실무능력평가">CAD실무능력평가</option>
                            <option value="전자기기기능사">전자기기기능사</option>
                            <option value="RFID기술자격검정">RFID기술자격검정</option>
                            <option value="화학분석기사">화학분석 기사</option>
                            <option value="파이썬마스터">파이썬마스터</option>
                            <option value="온수온돌기능사">온수온돌기능사</option>
                            <option value="조선기술사">조선기술사</option>
                            <option value="실천예절지도사">실천예절지도사</option>
                            <option value="철도차량운전면허">철도차량운전면허</option>
                            <option value="철도차량기사">철도차량기사</option>
                            <option value="청소관리사">청소관리사</option>
                            <option value="세무회계 3급">세무회계 3급</option>
                            <option value="손해평가사">손해평가사</option>
                            <option value="건축도장기능사">건축도장기능사</option>
                            <option value="네트워크관리사1급">네트워크관리사1급</option>
                            <option value="텔레마케팅관리사">텔레마케팅관리사</option>
                            <option value="샵마스터(3급)">샵마스터(3급)</option>
                            <option value="실천예절지도사">실천예절지도사</option>
                            <option value="플라스틱창호기능사">플라스틱창호기능사</option>
                            <option value="로더운전기능사">로더운전기능사</option>
                            <option value="한국실용글쓰기검정">한국실용글쓰기검정</option>
                            <option value="항공산업기사">항공산업기사</option>
                            <option value="초경량비행장치조종자">초경량비행장치조종자</option>
                            <option value="해양자원개발기사">해양자원개발기사</option>
                            <option value="화학분석기사">화학분석기사</option>
                            <option value="대기환경기사">대기환경기사</option>
                            <option value="수질환경 기사">수질환경 기사</option>
                            


                        </select>
                    </div>
                </div>

                <div class="col-lg-6">
                    <label for="calendar_view">시험일정</label>
                    <div class="input-group">
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="접수기간"
                                checked>접수기간</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="시험일"
                                checked>시험일</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="합격자 발표"
                                checked>합격자 발표</label>
                       
                    </div>
                </div>

            </div>
        </div>
        <!-- 일자 클릭시 메뉴오픈 -->
        <!-- <div id="contextMenu" class="dropdown clearfix">
            <ul class="dropdown-menu dropNewEvent" role="menu" aria-labelledby="dropdownMenu"
                style="display:block;position:static;margin-bottom:5px;">
                <li><a tabindex="-1" href="#">카테고리1</a></li>
                <li><a tabindex="-1" href="#">카테고리2</a></li>
                <li><a tabindex="-1" href="#">카테고리3</a></li>
                <li><a tabindex="-1" href="#">카테고리4</a></li>
                <li class="divider"></li>
                <li><a tabindex="-1" href="#" data-role="close">Close</a></li>
            </ul>
        </div> -->

        <div id="wrapper">
            <div id="loading"></div>
            <div id="calendar"></div>
        </div>


        <!-- 일정 추가 MODAL -->
        <div class="modal fade" tabindex="-1" role="dialog" id="eventModal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title"></h4>
                    </div>
                    <div class="modal-body">

                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-allDay">하루종일</label>
                                <input class='allDayNewEvent' id="edit-allDay" type="checkbox"></label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-title">일정명</label>
                                <input class="inputModal" type="text" name="edit-title" id="edit-title"
                                    required="required" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-start">시작</label>
                                <input class="inputModal" type="text" name="edit-start" id="edit-start" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-end">끝</label>
                                <input class="inputModal" type="text" name="edit-end" id="edit-end" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-type">구분</label>
                                <select class="inputModal" type="text" name="edit-type" id="edit-type">
                                    <option value="카테고리1">카테고리1</option>
                                    <option value="카테고리2">카테고리2</option>
                                    <option value="카테고리3">카테고리3</option>
                                    <option value="카테고리4">카테고리4</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-color">색상</label>
                                <select class="inputModal" name="color" id="edit-color">
                                    <option value="#D25565" style="color:#D25565;">빨간색</option>
                                    <option value="#9775fa" style="color:#9775fa;">보라색</option>
                                    <option value="#ffa94d" style="color:#ffa94d;">주황색</option>
                                    <option value="#74c0fc" style="color:#74c0fc;">파란색</option>
                                    <option value="#f06595" style="color:#f06595;">핑크색</option>
                                    <option value="#63e6be" style="color:#63e6be;">연두색</option>
                                    <option value="#a9e34b" style="color:#a9e34b;">초록색</option>
                                    <option value="#4d638c" style="color:#4d638c;">남색</option>
                                    <option value="#495057" style="color:#495057;">검정색</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-desc">설명</label>
                                <textarea rows="4" cols="50" class="inputModal" name="edit-desc"
                                    id="edit-desc"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer modalBtnContainer-addEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <button type="button" class="btn btn-primary" id="save-event">저장</button>
                    </div>
                    <div class="modal-footer modalBtnContainer-modifyEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                        <button type="button" class="btn btn-danger" id="deleteEvent">삭제</button>
                        <button type="button" class="btn btn-primary" id="updateEvent">저장</button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->

        

          
        <!-- /.filter panel -->
    </div>
    <!-- /.container -->

    <script src="/Project/Calendar/vendor/js/jquery.min.js"></script>
    <script src="/Project/Calendar/vendor/js/bootstrap.min.js"></script>
    <script src="/Project/Calendar/vendor/js/moment.min.js"></script>
    <script src="/Project/Calendar/vendor/js/fullcalendar.min.js"></script>
    <script src="/Project/Calendar/vendor/js/ko.js"></script>
    <script src="/Project/Calendar/vendor/js/select2.min.js"></script>
    <script src="/Project/Calendar/vendor/js/bootstrap-datetimepicker.min.js"></script>
    <script src="/Project/Calendar/js/main.js"></script>
    <script src="/Project/Calendar/js/addEvent.js"></script>
    <script src="/Project/Calendar/js/editEvent.js"></script>
    <script src="/Project/Calendar/js/etcSetting.js"></script>
    
    
   <!-- JavaScript Libraries --> 
  
    
   
    <script src="/Project/Calendar/lib/wow/wow.min.js"></script>
    <script src="/Project/Calendar/lib/easing/easing.min.js"></script>
    <script src="/Project/Calendar/lib/waypoints/waypoints.min.js"></script>
    <script src="/Project/Calendar/lib/counterup/counterup.min.js"></script>
    <script src="/Project/Calendar/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="/Project/Calendar/lib/isotope/isotope.pkgd.min.js"></script>
    <script src="/Project/Calendar/lib/lightbox/js/lightbox.min.js"></script>

    <!-- Template Javascript -->
    <script src="/Project/Calendar/js/main1.js"></script>
</body>
</html>