<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function checkForm() {
		document.RockScissorsPaper.submit();
	}
</script>
<body>
	<form action="ResultGame.jsp" method = "Post" name = "RockScissorsPaper">
		사용자 <br><br>
			<input type = "radio" name = "mRSP" value = "Scissors" checked> 가위
			<input type = "radio" name = "mRSP" value = "Rock"> 바위
			<input type = "radio" name = "mRSP" value = "Paper"> 보
			<br><br>
			<input type = "button" value = "결과확인" onclick = "checkForm()">
	</form>
</body>
</html>