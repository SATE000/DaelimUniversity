<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="SessionProcess.jsp" method = "Post" name = "MyForm">
		아이디 : <input type = "text" name = "mID" value = ""> <br>
		비밀번호(숫자만) : <input type="text" name = "mPwd" value = ""> <br>
		
		<input type = "submit" value = "로그인"> <br>
	</form>
</body>
</html>