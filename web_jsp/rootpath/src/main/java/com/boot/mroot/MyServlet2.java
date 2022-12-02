package com.boot.mroot;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ms2")
public class MyServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// response 객체에 MIME TYPE 을 지정하자
		response.setContentType("application/json; charset=utf-8");
		// response.setContentType("text/plain; charset=utf-8");
		
		// JSON 형식도 결과적으로 문자열 이다 . 패턴이 있는 문자열
		String resJson ="{\r\n"
		+ "\"name\": \"홍길동\",\r\n"
		+ "\"age\": 10,\r\n"
		+ "\"isMarried\": false\r\n"
		+ "}";
		// 응답 객체에 담아야 사용자가 받아 볼 수 있다 --> response 이다.
		response.getWriter().write(resJson);

		
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
