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
	
		String sIDx = request.getParameter("ID");
		//out.print(sIDx + "<br>");
		
		Connection MyConn = null;
		String sUrl = "jdbc:mysql://localhost:3306/class1jsp";
		String sUser = "root";
		String sPwd = "1234";
		
		Class.forName("com.mysql.jdbc.Driver");
		MyConn = DriverManager.getConnection(sUrl, sUser, sPwd);
		out.print("데이터베이스 연결이 성공했습니다.<br>");
		
		String sSql = "select * from class1jsp.tb_bbs where nIDx = " + sIDx + ";";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = MyConn.prepareStatement(sSql);
			rs = pstmt.executeQuery(sSql);
			out.print("Select 성공<br>");
			rs.next();
			int nIDx = rs.getInt("nIDx");
			String stitle = rs.getString("vTitle");
			int nView = rs.getInt("nView");
			String sRegDate = rs.getString("dRegDate");
			sSql = "update tb_bbs set nView = ? where nIDx = ?;";
			pstmt = MyConn.prepareStatement(sSql);
			pstmt.setInt(1, ++nView);
			pstmt.setInt(2, nIDx);
			pstmt.executeUpdate();
	%>
		<form action="MyViewDeleteProc.jsp?ID=<%=nIDx%>" method = "post" name = "MyForm">
			선택한 정보는 아래와 같습니다.<br>
			등록번호 : <%=nIDx %> <br>
			<!-- <input type = "hidden" name = "ID" value = "<%= //nIDx%>"> <br> -->
			제목 : <%=stitle %> <br>
			<!--제목 : <input type = text name = "mTitle" value = "<%= //stitle%>"><br>-->
			조회수 : <%=nView %> <br>
			등록일 : <%=sRegDate %> <br> <br>
		
			<input type="submit" value = "삭제"> <br>
			<!-- <input type="submit" value = "수정"> <br> -->
		</form>
	<%
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
		if (rs != null) {
			rs.close();
		}
			}
	%>
</body>
</html>