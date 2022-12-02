<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<!-- 여기 페이지에서 예외가 발생한다면 어디로 이동하라고 지정 가능하다. -->
	<%@ page errorPage="errorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%!String imgDir;
	String testServer;
	String realServer;
	String str;
	%>


	<%
	imgDir = application.getInitParameter("imgDir");
	testServer = application.getInitParameter("testServer");
	realServer = application.getInitParameter("realServer");
	
	//setAttribute 와 getAttribute 사용해보기
	//application.setAttribute(name, object)
	getServletContext().setAttribute("mySqlServerIp", "177.1.23.12");
	getServletContext().setAttribute("mySqlUser", "root");
	
	
	
	%>
	
	testServer : <%=testServer %>
	<br>
	realServer: <%=realServer %>
	
	
	<div>
		<img alt="ddd" src="<%=imgDir%>/kawai.jpg">
	</div>
	
	<!-- GET, SET 사용 -->
	
	<p>sqlIp : <%=getServletContext().getAttribute("mySqlServerIp") %></p>
	<p>mySqlUser : <%=getServletContext().getAttribute("mySqlUser") %></p>
	
	<%
	out.print(str.toString());
	//	response.sendRedirect("myapp2.jsp");
	
	
	%>
	
</body>
</html>


