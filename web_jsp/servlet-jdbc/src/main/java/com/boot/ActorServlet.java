package com.boot;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/us")
public class ActorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ActorServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 준비물
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String url = "jdbc:mysql://localhost:3306/sakila?serverTimezone=Asia/Seoul&characterEncoding=UTF-8";
		String dbUser = "root";
		String dbPw = "asd1234";
		
		String driverName = "com.mysql.cj.jdbc.Driver";
		
		// 요청 처리
		request.setCharacterEncoding("UTF-8");
		String first_name = request.getParameter("first_name");
		
		// 응답 처리
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		
		// DB접근 처리
		String query = "SELECT * FROM actor WHERE first_name ='"+first_name+"'";
		System.out.println(query);
		try {
			Class.forName(driverName);
			conn = DriverManager.getConnection(url, dbUser, dbPw);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			while(rs.next()) {
				out.print(rs.getString("actor_id"));
				out.print(rs.getString("first_name"));
				out.print(rs.getString("last_name"));
				out.print(rs.getString("last_update"));
				out.print("<br>");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				stmt.close();
				conn.close();
			} catch (SQLException e2) {
				// TODO: handle exception
			}
		}
		
		
		
	}

}
