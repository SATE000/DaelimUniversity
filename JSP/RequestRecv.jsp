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
		request.setCharacterEncoding("UTF-8");
	
		String sID = request.getParameter("mID");
		String sPwd = request.getParameter("mPwd");
	%>
	아이디 : <%=sID %> <br>
	비밀번호 : <%=sPwd %> <br><br>
	
	<%
		if (sID.equals("test") && sPwd.equals("000")) {
			response.sendRedirect("responseS.jsp");
		} else {
			response.sendRedirect("responseF.jsp");
		}
	%>
	
	<p>클라이언트 IP : <%=request.getRemoteAddr() %>
	<p>요청 정보 길이 : <%=request.getContentLength() %>
	<p>요청 정보 인코딩 : <%=request.getCharacterEncoding() %>
	<p>요청 정보 콘텐츠 유형 : <%=request.getContentType() %>
	<p>요청 정보 프로토콜 : <%=request.getProtocol() %>
	<p>요청 정보 전송 방식 : <%=request.getMethod() %>
	<p>요청 URI : <%=request.getRequestURI() %>
	<p>콘텍스트 경로 : <%=request.getContextPath() %>
	<p>서버이름 : <%=request.getServerName() %>
	<p>서버포트 : <%=request.getServerPort() %>
	<p>쿼리문 : <%=request.getQueryString() %>
	
</body>
</html>