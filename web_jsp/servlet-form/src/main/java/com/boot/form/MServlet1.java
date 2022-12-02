package com.boot.form;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/boot1")
public class MServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		
		System.out.println("--- do Get ---");
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		System.out.println("email : " + email);
		System.out.println("pwd : " + pwd);
		
		String [] like = request.getParameterValues("like");
		for (int i = 0; i < like.length; i++) {
			System.out.println(like[i] + " <<< 니가 좋아함");
		}
		
		Enumeration<String> name = request.getParameterNames();
		while(name.hasMoreElements()) {
			String data = name.nextElement();
			System.out.println("key 값 확인 : " + data);
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("--- do Post ---");
		doGet(request, response);
	}

}
