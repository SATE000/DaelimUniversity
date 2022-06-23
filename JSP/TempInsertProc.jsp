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
		request.setCharacterEncoding("UTF-8");
	
		String sName = request.getParameter("mName");
		String sScore = request.getParameter("mScore");
		
		//out.print(sName + "<br>");
		//out.print(sScore + "<br>");
		
		Connection MyConn = null;
		String sUrl = "jdbc:mysql://localhost:3306/class1jsp";
		String sUser = "root";
		String sPwd = "1234";
		
		Class.forName("com.mysql.jdbc.Driver");
		
		MyConn = DriverManager.getConnection(sUrl, sUser, sPwd);
		out.print("데이터베이스 연결이 성공했습니다.<br>");
		
		String sSql = "insert into tb_temp (vName, nScore, dRegDate) values ('" + sName + "', " + sScore + ", now());";
		//out.print(sSql + "<br>");
		
		Statement stmt = null;
		try {
			stmt = MyConn.createStatement();
			stmt.executeUpdate(sSql);
			out.print("테이블 입력 성공<br>");
		} catch (SQLException ex) {
			out.print("테이블 입력 실패<br>");
			out.print("SQLException : " + ex.getMessage());
		} finally {
			if (stmt != null) {
				stmt.close();
			}
			if (MyConn != null) {
				MyConn.close();
			}
		}
	%>
</body>
</html>