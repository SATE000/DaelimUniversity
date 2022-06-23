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
		out.print(sIDx);
		
		Connection MyConn = null;
		String sUrl = "jdbc:mysql://localhost:3306/class1jsp";
		String sUser = "root";
		String sPwd = "1234";
		
		Class.forName("com.mysql.jdbc.Driver");
		MyConn = DriverManager.getConnection(sUrl, sUser, sPwd);
		out.print("데이터베이스 연결이 성공했습니다.<br>");
		
		String sSql = "select * from class1jsp.tb_temp where nIDx = " + sIDx + ";";
		
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			stmt = MyConn.createStatement();
			rs = stmt.executeQuery(sSql);
			out.print("Select 성공<br>");
			rs.next();
			int nIdx = rs.getInt("nIdx");
			String sName = rs.getString("vName");
			int nScore = rs.getInt("nScore");
			String sRegDate = rs.getString("dRegDate");
	%>
		<form action="TempViewDeleteProc.jsp?ID=<%=nIdx%>" method = "post" name = "MyForm">
			선택한 정보는 아래와 같습니다.
			번호 : <%=nIdx %> <br>
			이름 : <%=sName %> <br>
			점수 : <%=nScore %> <br>
			등록일 : <%=sRegDate %> <br> <br>
		
			<input type="submit" value = "삭제"> <br>
		</form>
	<%
		} catch (SQLException ex) {
			out.print("데이터 삭제 실패<br>");
			out.print("SQLException : " + ex.getMessage());
		} finally {
			if (stmt != null) {
				stmt.close();
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