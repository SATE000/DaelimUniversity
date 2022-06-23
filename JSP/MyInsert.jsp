<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="MyInsertProc.jsp" method="post" name = "MyForm">
		제목 : <input type = "text" name = "mTitle" value = "" size = 10	> <br>
		이메일 : <input type = "email" value = "" size = 45> <br>
		<input type = "submit" value = "입력"> <br>
	</form>
	<br><br>
	<form action="MySelect.jsp" method="post" name = "MyForm">
		<input type = "submit" value = "목록페이지로 이동"> <br>
	</form>
</body>
</html>