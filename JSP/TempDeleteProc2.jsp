<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String sIDx = request.getParameter("ID");
		int nIDx = Integer.parseInt(sIDx);
		out.print(sIDx + "<br>");
		
		Connection MyConn = null;
		String sUrl = "jdbc:mysql://localhost:3306/class1jsp";
		String sUser = "root";
		String sPwd = "1234";
		
		Class.forName("com.mysql.jdbc.Driver");
		
		MyConn = DriverManager.getConnection(sUrl, sUser, sPwd);
		out.print("데이터베이스 연결이 성공했습니다.<br>");
		
		PreparedStatement pstmt = null;
		try {
			String sSql = "delete from class1jsp.tb_temp where nIDx = ?;";

			pstmt = MyConn.prepareStatement(sSql);
		
			pstmt.setInt(1, nIDx);
			pstmt.executeUpdate();
			out.println("데이터 삭제 성공");
		} catch (SQLException ex) {
			out.print("데이터 삭제 실패<br>");
			out.print("SQLException : " + ex.getMessage());
		} finally {
			if (pstmt != null) {
				pstmt.close();
			}
			if (MyConn != null) {
				MyConn.close();
			}
		}
	%>
</body>
</html>