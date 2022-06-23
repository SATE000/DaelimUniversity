<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="TempUpdateProc.jsp" method = "Post" name = "MyForm">
		번호 : <input type = "text" name = "mIdx" value = ""> <br>
		이름 : <input type = "text" name = "mName" value = ""> <br>
		점수 : <input type = "text" name = "mScore" value = ""> <br>
		<input type = "submit" value = "수정"> <br>
	</form>
</body>
</html>