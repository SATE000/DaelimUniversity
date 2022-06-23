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
	
		String sIdx = request.getParameter("mIdx");
		String sName = request.getParameter("mName");
		String sScore = request.getParameter("mScore"); //전페이지로부터 데이터불러오기
		
		Connection MyConn = null;
		String sUrl = "jdbc:mysql://localhost:3306/class1jsp";
		String sUser = "root";
		String sPwd = "1234"; //데이터베이스연결 사전준비
		
		Class.forName("com.mysql.jdbc.Driver");
		MyConn = DriverManager.getConnection(sUrl, sUser, sPwd);
		out.print("데이터베이스 연결이 성공했습니다.<br>"); //데이터베이스 연결
		
		String sSql = "update tb_temp set vName = '" + sName + "' , nScore = " + sScore + " where nIdx = " + sIdx + ";";
		Statement stmt = null;
		try {
			stmt = MyConn.createStatement();
			stmt.executeUpdate(sSql);
			out.print("테이블 수정 성공<br>");
		} catch (SQLException ex) {
			out.print("테이블 수정 실패<br>");
			out.print("SQLException : " + ex.getMessage());
		} finally {
			if (stmt != null) {
				stmt.close();
			}
			if (MyConn != null) {
				MyConn.close();
			}
		} //데이터베이스 수정작업
	%>
</body>
</html>