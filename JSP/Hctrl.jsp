<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	아이디
		<input type = "text" name = "mID" value = "candy143"><br>
		<input type = "button" value = "OK"> <br><br>

	당신이 자주 사용하는 종족은? <br>
		<select name = "sel" size = "3">
			<option value = "저그" selected>저그
			<option value = "테란">테란
			<option value = "프로토스">프로토스
		</select> <br><br>
	
	잘하는 프로그래밍 언어는? <br>
		<input type = "checkbox" name = "chk1" value = "JAVA">자바<br>
		<input type = "checkbox" name = "chk2" value = "C++">c++<br>
		<input type = "checkbox" name = "chk3" value = "PYTHON" checked>Python<br><br>
		
	좋아하는 과목은? <br>
		<input type = "radio" name = "ra" value = "java">자바<br>
		<input type = "radio" name = "ra" value = "server">서버프로그래밍<br>
		<input type = "radio" name = "ra" value = "android">안드로이드<br><br>
		
	지금하고싶은말<br>
		<textarea name = "myarea" rows="5" cols="30">수업 끝내주세요~~</textarea><br><br>
		
	<a href = "http://www.daelim.ac.kr">바로가기</a> <br><br>
</body>
</html>