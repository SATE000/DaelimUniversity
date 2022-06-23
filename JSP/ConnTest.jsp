<%@page import="java.sql.*"%>
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
		Connection MyConn = null;
		try {
			String sUrl = "jdbc:mysql://localhost:3306/class1jsp";
			String sUser = "root";
			String sPwd = "1234";
		
			Class.forName("com.mysql.jdbc.Driver");
		
			MyConn = DriverManager.getConnection(sUrl, sUser, sPwd);
			out.print("데이터베이스 연결이 성공했습니다.<br>");
		} catch (SQLException ex) {
			out.print("데이터베이스 연결이 실패했습니다.<br>");
			out.print("SQLException : " + ex.getMessage() + "<br>");
			
			ex.printStackTrace();
		} finally {
			if (MyConn != null) {
				MyConn.close();
				out.print("데이터베이스 연결 해제!");
			}
		}
	%>
</body>
</html>