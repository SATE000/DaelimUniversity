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
	
		String sName = request.getParameter("mName");
		String sScore = request.getParameter("mScore");
		int nScore = Integer.parseInt(sScore);
		out.println(sName + "<br>");
		out.println(sScore + "<br>");
		
		Connection MyConn = null;
		String sUrl = "jdbc:mysql://localhost:3306/class1jsp";
		String sUser = "root";
		String sPwd = "1234";
		
		Class.forName("com.mysql.jdbc.Driver");
		
		MyConn = DriverManager.getConnection(sUrl, sUser, sPwd);
		out.print("데이터베이스 연결이 성공했습니다.<br>");
		
		PreparedStatement pstmt = null; //statement문보다 효율성이나 보수측면에서유리하다
		try {
			String sSql = "insert into tb_temp (vName, nScore, dRegDate) values (?,?, now());";
		
			pstmt = MyConn.prepareStatement(sSql);
		
			pstmt.setString(1, sName); //sql문에서 ?에 해당되는 값을 설정
			pstmt.setInt(2, nScore);
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