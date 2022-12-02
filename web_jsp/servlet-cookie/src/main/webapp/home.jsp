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
	Cookie[] cookies = request.getCookies();
	String userId = "";

	if (cookies != null) {

		for (Cookie c : cookies) {
			System.out.println("c name " + c.getName());
			System.out.println("c age " + c.getMaxAge());
			if(c.getName().equals("memberId")){
				userId = c.getValue();
			}
		}
	}
	%>


	<h1>
		여기는
		<%=userId%>> 홈 화면 입니다.
	</h1>

	버튼 생성 -> 쿠키 삭제하기 기능 추가

	<a href="login.jsp">버튼</a>







</body>
</html>