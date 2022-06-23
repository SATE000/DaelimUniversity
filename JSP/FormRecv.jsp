<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	받는 곳<br>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String sName = request.getParameter("mName");
		String sPhone = request.getParameter("mPhone");
		String sJ = request.getParameter("tsn");
		int j = Integer.parseInt(sJ);
		
	%>
	이름 : <%= sName %> <br>
	핸드폰 : <%= sPhone %> <br>
	369는 <br> <%
		for (int i = 1; i < j + 1; i++) {
			String s = i + "";
			out.println(s + " ");
			/*if (s.contains("3") || s.contains("6") || s.contains("9"))
				out.println("짝");*/
			/*int n = 10, j = i;
			while (n > 0) {
				n = i % 10;
				if (n == 3 || n == 6 || n == 9)
					out.println("짝");
				i /= 10;
			}
			i = j;*/
			for (int k = 0; k < s.length(); k++) {
				char c = s.charAt(k);
				if (c == '3' || c == '6' || c == '9'){
					out.println("짝");
				}
			}
			out.println("<br>");
		}
	%>
</body>
</html>