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
	
		Connection MyConn = null;
		String sUrl = "jdbc:mysql://localhost:3306/class1jsp";
		String sUser = "root";
		String sPwd = "1234";
	
		Class.forName("com.mysql.jdbc.Driver");
	
		MyConn = DriverManager.getConnection(sUrl, sUser, sPwd);
		out.print("데이터베이스 연결이 성공했습니다.<br>");
		
		String sSql = "select * from class1jsp.tb_temp order by dRegDate desc;";
		
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			stmt = MyConn.createStatement();
			rs = stmt.executeQuery(sSql); //select 는 데이터를 변경하는것이 아니기때문에 update가아닌query를 사용한다.
			out.print("Select 성공 <br>");
	%>
		<table width = "500" border = "1">
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>점수</th>
				<th>등록번호</th>
			</tr>
	<%
			while (rs.next()) {
				int nIdx = rs.getInt("nIdx");
				String sName = rs.getString("vName");
				int nScore = rs.getInt("nScore");
				String sRegDate = rs.getString("dRegDate");
	%>			
			<tr>
				<th><%=nIdx %></th>
				<th><a href="TempView.jsp?ID=<%=nIdx%>"><%=sName %></a></th>
				<th><%=nScore %></th>
				<th><%=sRegDate %></th>
			</tr>
	<%
		}
	%>
		</table>
	<%
		} catch (SQLException ex) {
			out.print("SQLException : " + ex.getMessage());
		} finally {
			if (stmt != null) {
				stmt.close();
			}
			if (MyConn != null) {
				MyConn.close();
			}
			if (rs != null) {
				stmt.close();
			}
		}
	%>
</body>
</html>