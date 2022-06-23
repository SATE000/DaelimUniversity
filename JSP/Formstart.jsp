<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action = "FormRecv.jsp" method = "Post" name = "NameForm">
		이름 : <input type ="text" name = "mName" value = "" > <br>
		<input type ="submit" value = "OK" >
		<input type ="reset" value = "Cancle" > <br>
		핸드폰 : <input type = "text" name = "mPhone" value = "" > <br>
		
		369 : <input type = "text" name = "tsn" value = "1000" > <br>
		
	</form>
	<br><br><br>
	
	<!-- 1.Control 에 name 지정  -->
	<!-- 2.Form tag 설정  -->
	<!-- 3. action에 지정된 파일 설정 -->
	<!-- 4. Recv 처리 -->
	
	<form action = "FormTest.jsp" method = "Post" name = "MyFormTest">
		좋아하는 과목은? <br>
			<input type = "radio" name = "mRa" value = "java" checked>자바<br>
			<input type = "radio" name = "mRa" value = "server">서버프로그래밍<br>
			<input type = "radio" name = "mRa" value = "android">안드로이드<br><br>
				
		당신이 자주 사용하는 종족은? <br>
			<select name = "mSel" size = "3">
				<option value = "저그" selected>저그
				<option value = "테란">테란
				<option value = "프로토스">프로토스
			</select> <br><br>
			
		비번 : <input type ="password" name = "mPwd" value = "" > <br><br>
		
		잘하는 프로그래밍 언어는? <br>
			<input type = "checkbox" name = "mChk" value = "JAVA">자바<br>
			<input type = "checkbox" name = "mChk" value = "C++">c++<br>
			<input type = "checkbox" name = "mChk" value = "PYTHON" checked>Python<br><br>
		
		지금 하고 싶은 말은 <br>
			<textarea name = "mMyArea" rows="5" cols="30">수업 끝내주세요~~</textarea><br><br>
			<input type = "submit" value = "확인">		
	</form>
	
</body>
</html>