package com.boot;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ActorTimeServlet")
public class ActorTimeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// 준비물
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	String url = "jdbc:mysql://localhost:3306/movies?serverTimezone=Asia/Seoul&characterEncoding=UTF-8";
	String dbUser = "root";
	String dbPw = "asd1234";
	String driverName = "com.mysql.cj.jdbc.Driver";

	public ActorTimeServlet() {
		try {
			Class.forName(driverName);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 요청 처리
		request.setCharacterEncoding("UTF-8");
		String number = request.getParameter("number");

		// 응답 처리
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		// DB 처리
		String query = "SELECT * FROM 배우 WHERE 번호 = ?";
		try {
			conn = DriverManager.getConnection(url, dbUser, dbPw);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, number);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				out.print(rs.getString("번호"));
				out.print(rs.getString("이름"));
				out.print(rs.getString("출생"));
				out.print(rs.getString("키"));
				out.print(rs.getString("몸무게"));
				out.print(rs.getString("배우자"));
				out.print("<br>");
			}
		} catch (SQLException e) {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

		}
	}
	
	private String getCurrentTime() {
		
		//2022-11-29T11:43:02.196186300
        LocalDateTime now = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:dd:ss");
        String nowTime = formatter.format(now);
        System.out.println(nowTime);
        return nowTime;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 요청 처리
		request.setCharacterEncoding("UTF-8");
		String num = request.getParameter("number");
		String name = request.getParameter("name");
		String birth = getCurrentTime();

		// 응답 처리
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		// INSERT INTO 배우(번호, 이름, 출생) VALUES (?, ?, ?);
		// DB 접근 처리
		// 번호, 이름, 출생
		int result = -1;
		try {
			String query = "INSERT INTO 배우(번호, 이름, 출생) VALUES (?, ?, ?) ";
			Connection conn = DriverManager.getConnection(url, dbUser, dbPw);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, num);
			pstmt.setString(2, name);
			pstmt.setString(3, birth);
			result = pstmt.executeUpdate();
			if (result == 1) {
				out.print("정상 등록 되었습니다");
			} else {
				out.print("잘못된 요청입니다.");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
				// 한줄 허용 해줌
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

}
