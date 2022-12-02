<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>여기는 login_form.html 에서 넘어온 데이터를 처리하는 곳</h3>
	<p>넘어온 데이터를 처리하고 다시 사용자한테 응답 처리 까지 진행한다.</p>
	<%!
		String email;
		String pwd;
	%>
	
	<%
	
	// 요청 응답시에 한글처리를 위하여 셋팅할 필요가 있다
	// get 방식때 한글 처리를 따로 해야하고
	// post 방식때 한글 처리를 따로 해야 한다
	
	
	 	//request.setCharacterEncoding("UTF-8");
	
	
		// 스트립트 릿 에서 request 객체를 이용하여 값을 받아 보자.
		// 문제 전체 key 값을 받고 싶다면 ???
		Enumeration<String> e = request.getParameterNames();
		while(e.hasMoreElements()){
			String name = e.nextElement();
			System.out.println("name 값 : " + name);
		}
		email = request.getParameter("email");
		pwd = request.getParameter("pwd");
		String hobby = request.getParameter("hobby");
		String[] likes = request.getParameterValues("like");
		
		
		// 응답을 처리하기 위해 response 객체를 사용가능하다.
		PrintWriter printWriter = response.getWriter();
		printWriter.write("email : " + email +"<br>");
		printWriter.write("pwd : " + pwd +"<br>");
		printWriter.write("hobby : " + hobby +"<br>");
		printWriter.write("likes : " + likes.length +"<br>");

		
		for(int i = 0; i < likes.length; i++){
			System.out.println("---------------------");
			System.out.println(likes[i]);
			printWriter.write("like : " + likes[i]+"<br>");
		}
		
		response.sendRedirect("home.jsp");
		
	%>
	
	>>>>>>>>>>>>>>>
	<br>
	>>>>>>>>>>>>>>>
	
</body>
</html>