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
	
		String sTitle = request.getParameter("mTitle");
		String sEmail = request.getParameter("mEmail");
		
		//out.print(sName + "<br>");
		//out.print(sScore + "<br>");
		
		Connection MyConn = null;
		String sUrl = "jdbc:mysql://localhost:3306/class1jsp";
		String sUser = "root";
		String sPwd = "1234";
		
		Class.forName("com.mysql.jdbc.Driver");
		
		MyConn = DriverManager.getConnection(sUrl, sUser, sPwd);
		out.print("데이터베이스 연결이 성공했습니다.<br>");
		
		PreparedStatement pstmt = null;
		try {
			String sSql = "insert into class1jsp.tb_bbs (vTitle, nView, dRegDate, vEmail) values (?, 1, now(), ?);";
		
			pstmt = MyConn.prepareStatement(sSql);
		
			pstmt.setString(1, sTitle); //sql문에서 ?에 해당되는 값을 설정
			pstmt.setString(2, sEmail);
			pstmt.executeUpdate();
			out.println("테이블 입력 성공");
		} catch (SQLException ex) {
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