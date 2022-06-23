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
	out.println("369 Start<br><br>");
	for (int i = 1; i < 101; i++) {
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