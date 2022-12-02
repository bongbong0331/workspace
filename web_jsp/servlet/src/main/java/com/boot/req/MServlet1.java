package com.boot.req;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ms1")
public class MServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// HttpServletRequest - 주요 메서드 
		request.getCookies();
		request.getSession();
		request.getAttribute("name");
//		request.setAttribute(null, null);
		request.getParameter("name");
		request.getParameterNames();
		request.getParameterValues("value");
		
		// HttpServletResponse - 주요 메서드
		response.addCookie(null);
		response.getStatus();
		// 새로운 request, response 가 생성이 된다 !! ....
		response.sendRedirect(getServletInfo());
		response.getWriter();
		// 1바이트 ..?
		response.getOutputStream();
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
