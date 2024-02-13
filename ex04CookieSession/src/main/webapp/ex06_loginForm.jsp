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
	<fieldset>
		<legend>로그인</legend>
		<form action="ex06_loginCheck.jsp" method="post">
			id : <input type="text" name="id"><br>
			password : <input type="password" name="pw"><br>
			<input type="submit" value="전송">
		</form>
	</fieldset>
</body>
</html>