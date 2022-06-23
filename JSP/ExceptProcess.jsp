<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%//@ page errorPage="ExceptionError.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
			
		String sNum1 = request.getParameter("num1");
		String sNum2 = request.getParameter("num2");
		
		int nNo1 = Integer.parseInt(sNum1);
		int nNo2 = Integer.parseInt(sNum2);
		int nValue = 0;
		try {
			nValue = nNo1 / nNo2;
		} catch (NumberFormatException e) {
			//RequestDispatcher dispatcher = request.getRequestDispatcher("tryCatchError.jsp");
			//dispatcher.forward(request, response);
			response.sendRedirect("ExceptStart.jsp");
		}
		
		out.print(nNo1 + " / " + nNo2 + " = " + nValue);
	%>
</body>
</html>