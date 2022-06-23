<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	Formtest<br><br>
	
	<% 
		request.setCharacterEncoding("UTF-8");
	
		String sRa = request.getParameter("mRa");
		//ASP
		//String sRa = request.Form("mRa"); // POST
		//String sRa = request.queryString("mRa"); //GET
		//PHP
		//String sRa = $_POST("mRa");
		//String sRa = $_GET("mRa");
		String sMyArea = request.getParameter("mMyArea");
		String sSel = request.getParameter("mSel");
		String sPwd = request.getParameter("mPwd");
		String[] saMyChk = request.getParameterValues("mChk");
		/*String sChk1 = request.getParameter("mChk1");
		String sChk2 = request.getParameter("mChk2");
		String sChk3 = request.getParameter("mChk3");*/
	%>
	
	좋아하는 과목은
	<%
		if (sRa.equals("java")) {
			out.println("자바");
		} else if (sRa.equals("server")) {
			out.println("서버프로그래밍");
		} else if (sRa.equals("android")) {
			out.println("안드로이드");
		}
	%><br><br>
	
	종족은? <%=sSel %> <br><br>
	프로그래밍 언어는
	<%
		if (saMyChk != null)
			for (int i = 0; i < saMyChk.length; i++) 
				out.println(" , " + saMyChk[i]);
		
		/*if (sChk1 != null) {
			out.println(sChk1);
		}
		if (sChk2 != null) {
			out.println(sChk2);
		}
		if (sChk3 != null) {
			out.println(sChk3);
		}*/
	%> <br><br>
	비번은? <%=sPwd %> <br><br>
	지금 하고 싶은 말 : <%=sMyArea %><br><br>
	
</body>
</html>