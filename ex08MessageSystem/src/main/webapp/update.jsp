<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ page import="com.smhrd.domain.Member" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Forty by HTML5 UP</title>
		<meta charset="UTF-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="assets/css/main.css" />		
	</head>
	<body style="text-align: center;">
 
		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Menu -->
					<nav id="Update">	
						<ul class="actions vertical">
							<li><h5>회원정보수정</h5></li>
								<form action="updateCon" method="post">
									<li>접속한 Email : ${loginMember.email}</li>
									<li><input type="password" name="pw" value="${loginMember.pw}" placeholder="PW를 입력하세요" style="width: 500px; margin: 0 auto;"></li>
									<li><input type="text" name="tel" value="${loginMember.tel}" placeholder="전화번호를 입력하세요" style="width: 500px; margin: 0 auto;"></li>
									<li><input type="text" name="address" value="${loginMember.address}" placeholder="집주소를 입력하세요" style="width: 500px; margin: 0 auto;"></li>
									<li><input type="submit" value="회원정보수정" class="button fit" style="width: 500px; margin: 0 auto;"></li>
									<!-- form태그에 값을 보내려면 input type="hidden" 으로 보내기  -->
								</form>
						</ul>
					</nav>			
			</div>
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
	</body>
</html>

