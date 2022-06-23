<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String user_id = (String) session.getAttribute("userID");
		String user_pw = (String) session.getAttribute("userPwd");
		
		out.println("설정된 세션 이름 userID : " + user_id + "<br>");
		out.println("설정된 세션 이름 userPW : " + user_pw + "<br>");
		
		if (request.isRequestedSessionIdValid() == true) {
			out.println("세션이 유효합니다.<br>");
		} else {
			out.println("세션이 유효하지않습니다.<br>");
		}
		session.invalidate();
		
		out.println("세션 삭제후.<br>");
		
		if (request.isRequestedSessionIdValid() == true) {
			out.println("세션이 유효합니다.<br>");
		} else {
			out.println("세션이 유효하지않습니다.<br>");
		}
	%>
</body>
</html>