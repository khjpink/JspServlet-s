<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 3행 4열 -->
	<%int num = 1; %>
	
	<table border="1px solid black">
	<%for(int i=1; i<=3; i++){%>
		<tr>
		<%for(int j=1; j<=4; j++){%>
			<td><%=num++%></td>
		<%}%>
		</tr>
	<%}%>		
			
			
				
			
		
	</table>
	

</body>
</html>