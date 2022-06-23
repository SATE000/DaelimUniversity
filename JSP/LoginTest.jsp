<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script type="text/javascript">
	function CheckForm() {
		//alert("Check Start!");
		
		if (document.MyForm.mID.value == "") {
			alert("아이디를 입력하세요");
			document.MyForm.mID.focus();
			return false;
		}
		
		if (document.MyForm.mPwd.value == "") {
			alert("비밀번호를 입력하세요");
			document.MyForm.mPwd.focus();
			return false;
		}
		
		if (document.MyForm.mID.value.length < 5) {
			alert("아이디는 5자리 이상이여야 합니다");
			document.MyForm.mID.focus();
			return false;
		}
		var form = document.MyForm;
		
		for (i = 0; i < form.mID.value.length; i++) {
			var ch = form.mID.value.charAt(i);
			
			if ((ch < 'a' || ch > 'z') && (ch < '0' || ch > '9')) {
			//if ((ch < 61 || ch > 7A) && (ch < 30 || ch > 39)) {
				alert("아이디는 영어소문자, 혹은 숫자만 입력하세요");
				form.mID.focus();
				return false;
			}
		}
			
		for (i = 0; i < form.mPwd.value.length; i++) {
			if ( isNaN(form.mPwd.value.substr(i,i+1) )) {
				alert("비밀번호는 숫자로만 입력 가능 합니다");
				form.mPwd.select();
				return;
			}
		}
		
		if (form.idsave.checked) {
			alert("ID 저장 선택");
		} else {
			alert("ID 저장 미선택");
		}
		if (form.pwdsave.checked) {
			alert("비밀번호 저장 선택");
		} else {
			alert("비밀번호 저장 미선택");
		}
		
		alert("아이디 : " + form.mID.value + "\n" +
				"비밀번호 : " + form.mPwd.value);
		
	}
</script>

<body>
	<form action = "LoginResult.jsp" method = "Post" name = "MyForm">
		아이디(5자리 이상) : <input type ="text" name = "mID" value = "" > <br>
		아이디는 영문 소문자와 숫자로만 입력!<br>
		비밀번호(숫자만) : <input type ="text" name = "mPwd" value = "" > <br>
		
		<p> 아이디 저장<input type = "checkbox" name = "idsave" value = "IdS_OK">
		비번 저장<input type = "checkbox" name = "pwdsave" value = "PWDS_OK"> <br>
		
		<input type = "button" value = "로그인" onclick="CheckForm()"><br>
	</form>
</body>
</html>