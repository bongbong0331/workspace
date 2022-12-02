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
		String number = request.getParameter("num");
		int dan = Integer.parseInt(number);
		for(int i = 1; i <10; i++){
			String str = dan + " * " + " = " + (dan + i) + "<br>";
			out.print(str);
		}
	%>



</body>
</html>