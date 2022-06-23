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
		String sID = request.getParameter("mID");
		String sPwd = request.getParameter("mPwd");
	
		if (sID.equals("admin") && sPwd.equals("1234")) {
			Cookie cookie_id = new Cookie("userID",sID);
			Cookie cookie_pwd = new Cookie("userPwd",sPwd);
			response.addCookie(cookie_id);
			response.addCookie(cookie_pwd);
			
			out.println("쿠키 생성이 성공했습니다.<br>");
			out.println(sID + "님 환영합니다.");
		} else {
			out.println("쿠키 생성이 실패했습니다.");
		}
	%>
</body>
</html>