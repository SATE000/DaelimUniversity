<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이창우</title>
</head>
<body>
Test<br>
Start<br>
<%
	int nSum = 0;
	int i = 1;
	String sMsg = "Result = ";
	
	for (i = 1; i <= 10; i++){
		nSum += i;
	}
	
	sMsg += nSum;
	
	out.print(sMsg +"<br><br>");
	
	nSum = 0;
	i = 1;
	sMsg = "Result = ";
	
	while (i <= 100){
		nSum = nSum + i;
		i++;
	}
	
	sMsg += nSum;
	
	out.print(sMsg + "<br><br>");
	
	nSum = 0;
	i = 1;
	
	int nOddSum = 0, nEvenSum = 0;
	
	while (i <= 100) {
		if (i % 2 != 0) nOddSum += i;
		else nEvenSum += i;
		i++;
	}
	
	out.print("홀수의 합은 " + nOddSum + "이고, 짝수의 합은 " + nEvenSum + "입니다.");
%>
</body>
</html>