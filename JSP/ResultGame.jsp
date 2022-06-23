<%@page import="java.util.Random"%>
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
	
		String sRSP = request.getParameter("mRSP");
		String[] saRSP = new String[3];
		saRSP[0] = "Scissors";
		saRSP[1] = "Rock";
		saRSP[2] = "Paper";
		Random rd = new Random();
		int icom = rd.nextInt(saRSP.length);
		
		String sResult = "";
		if (sRSP.equals(saRSP[icom])){
			sResult = "무승부";
		} else if (sRSP.equals("Rock")) {
			if (saRSP[icom].equals("Paper")) {
				sResult = "패배";
			} else {
				sResult = "승리";
			}
		} else if (sRSP.equals("Scissors")) {
			if (saRSP[icom].equals("Rock")) {
				sResult = "패배";
			} else {
				sResult = "승리";
			}
		} else if (sRSP.equals("Paper")) {
			if (saRSP[icom].equals("Scissors")) {
				sResult = "패배";
			} else {
				sResult = "승리";
			}
		}
	%>
	유저가 선택한 결과는 
	<%
		if (sRSP.equals("Rock")) {
			out.print("바위");
		} else if (sRSP.equals("Scissors")) {
			out.print("가위");
		} else if (sRSP.equals("Paper")) {
			out.print("보");
		}
	%> 입니다.<br>
	컴퓨터가 선택한 결과는 
	<%
		if (saRSP[icom].equals("Rock")) {
			out.print("바위");
		} else if (saRSP[icom].equals("Scissors")) {
			out.print("가위");
		} else if (saRSP[icom].equals("Paper")) {
			out.print("보");
		}
	%> 입니다.<br><br>
	
	가위바위보 결과는 <%=sResult %>입니다.
</body>
</html>