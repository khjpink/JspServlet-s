<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

<!-- header 불러오기 -->
<%@ include file="./subHerder.jsp" %>

<title>관심 자격증 검색하기</title>

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
    <style>

        .select{
          max-width: 100%;
          width: 70%;
          margin: 50px auto 0px auto;
          box-shadow: 0px 0px 3px 0px gray;
          
          padding: 20px;
        }
        .btn{
          display: flex;
          flex-direction: row;
          justify-content: center;
          align-items: center;

          margin-top: 10px;
          }
         .btn > button {
            margin-right: 10px;
        } 
        
        .con{
		  color: blue;
          margin: 10px auto 0px auto;
    	  line-height: 1.75;
	      overflow-x: auto;
          background-color: #eee;
	      padding: 20px; */
          }
          
    </style>

</head>
<body>

  
      <div class="container-xxl py-5 bg-primary hero-header">
        <div class="container my-5 py-5 px-lg-5">
            <div class="row g-5 py-5">
                <div class="col-12 text-center">
                    <h1 class="text-white animated slideInDown">관심 자격증</h1>
                    <hr class="bg-white mx-auto mt-0" style="width: 90px;">
                </div>
            </div> 
        </div>
    </div>  
  


<!-- 셀렉트박스 -->
  <div class="select">
    <div class="input-group mb1">
      <label class="input-group-text" for="inputGroupSelect01">대분류</label>
      <select class="form-select" id="inputGroupSelect01">
        <option selected>계열별 분류</option>
        <option value="1">전체</option>
        <option value="2">환경·에너지·안전</option>
        <option value="3">사회복지·소방</option>
        <option value="4">전기·전자·정보</option>
        <option value="5">건설·기계·재료</option>
        <option value="6">농림수산·식품가공</option>
        <option value="7">운전·운송</option>
        <option value="8">의복·미용·디자인</option>
        <option value="9">법률·금융·영업</option>
        <option value="10">경영·회계·사무</option>
        <option value="11">교육·지도·안내</option>
        <option value="12">보건·의료</option>
        <option value="13">취미·레저</option>
      </select>
    </div><br>

    <div class="input-group mb2">
        <label class="input-group-text" for="inputGroupSelect02">중분류</label>
        <select class="form-select" id="inputGroupSelect02">
          <option selected>자격증 분류</option>
          <option value="1">국가기술자격</option>
          <option value="2">국가전문자격</option>
          <option value="3">능력검정</option>
          <option value="4">민간자격증</option>
          <option value="5">해외자격증</option>
        </select>
      </div><br>

      <div class="input-group mb2">
        <select class="form-select" id="inputGroupSelect03">
          <option selected>등록할 자격증을 선택해주세요</option>
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
      </div><br>
   
    <div class="btn">
      <button type="button" class="btn btn-outline-primary" onclick="register()">등록하기</button>
    </div>
  
  
    <div class="con" id="com">
        <!-- 등록하기 버튼 클릭시 정보가 들어가는 공간 -->
    </div>


    <!-- 등록버튼 클릭시 밑에 추가되는 동적 jQuery -->
	<script src="../js/jquery-3.6.1.min.js"></script>
    <script>
        function register(){
          alert('등록하시겠습니까?');
        }

          $('.btn.btn-outline-primary').click(function(){
              let com = $('#inputGroupSelect03').val() 
              let com2 = "<span>"+com+"<span><button class='removeCom'>삭제</button><br>"
              $('#com').append(com2)
              $('input').val('') 
          })
  
          $(document).on('click','.removeCom', function(){
              $('#com').empty()
          })
        </script>
        
</body>
</html>