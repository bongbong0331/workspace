<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- j s p 선언 태그 -->
	<!-- 멤버 변수와 메서드 등 선언 가능 -->
	<!-- 선언 태그에서 식 사용 불가, 선언만 가능하다 -->
	
	<%!
	
		int num = 10;
		String str = "boot camp jsp";
		ArrayList<String> list = new ArrayList<String>();
		
		public void myMethod(){
			System.out.println("Jsp file method !!!");
		}
		
		// System.out.println("Jsp file method !!!");   < 사용 안됨 ~
		// num = (100 * 100); <<< 마찬가지로 사용안됨~ 
		
	%>
	
	<!-- 여기는 html 주석입니다. -->	
	<%-- 여기는 JSP 주석 입니다. HTML 응답시에 사용자는 확인할 수 없다. --%>
	
	<!-- 스크립트 릿 -->
	<!-- 자바 코드 마음껏 사용 가능 (메서드 안 같은곳) -->
	<%
		System.out.println("num : " + num);
		myMethod();
		
	%>
	
	<!--  표현태그  -->
	<section>
		<p>당신의 한국 나이는 올해 까지지만 <%=num %> 입니다.</p>
	</section>
	
</body>
</html>