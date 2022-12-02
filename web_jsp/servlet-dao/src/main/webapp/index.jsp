
<%@page import="javax.sql.DataSource"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@page import="javax.naming.InitialContext"%>
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
	
		// 톰캣 서버에서 자원을 찾기 위해 InitialContext 인스턴스 생성
		InitialContext initialContext = new InitialContext();
	//lookup() 메소드로 JNDI 이름으로 등록되어 있는 서버 자원을 찾음
		DataSource dataSource = (DataSource)initialContext.lookup("java:comp/env/jdbc/mysqlDB");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String query = "select * from 영화";
		
		// 커넥션 풀에 rent 해서 데이터베이스 연결 객체를 가져온다.
		conn = dataSource.getConnection();
		pstmt = conn.prepareStatement(query);
		rs = pstmt.executeQuery();
		
		while(rs.next()){
			out.print(rs.getString("이름"));
			out.print("<br>");
		}
	%>



<h3>
	<a href="/boot/movieInfo">영화조회</a>
</h3>

<form action="/boot/moviesave" method="post">
		번호 : <input type="text" name="num">
		이름 : <input type="text" name="name">
		개봉연도 : <input type="text" name="date">
		매출액 : <input type="text" name="totalPrice">
		관객수 : <input type="text" name="audience">
		평점 : <input type="text" name="grade">
<input type="submit"  value="등록">
</form>


</body>
</html>