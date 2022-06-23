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
		
		session.setAttribute("userID", sID);
		session.setAttribute("userPW", sPwd);
		out.println("세션 설정이 성공했습니다.<br>");
	%>
</body>
</html>