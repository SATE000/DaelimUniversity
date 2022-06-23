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
		String sSID = (String) session.getAttribute("userID");
		String sSPwd = (String) session.getAttribute("userPW");
		
		out.println("userID 세션의 값 : " + sSID + "<br>");
		out.println("userPW 세션의 값 : " + sSPwd);
	%>
</body>
</html>