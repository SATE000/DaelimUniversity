<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>오류가 발생하였습니다.
	<p> 예외 : <%=exception %>
	<p> 문자열 : <%=exception.toString() %>
	<p> 클래스 이름 : <%=exception.getClass().getName() %>
	<p> 메세지 : <%=exception.getMessage() %>
</body>
</html>