package com.boot.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginProc")
public class LoginProc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginProc() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String mId = request.getParameter("mId");
		String mPw = request.getParameter("mPw");
		
		Cookie[] cookies = request.getCookies();
		Cookie serverCookie = null;
		
		
		// check ->> on , not check >> null
		String isSaveId = request.getParameter("isSaveId");
		if(isSaveId == null) {
			System.out.println("isSaveId" + isSaveId);
			for(Cookie c : cookies ){
				System.out.println("cname" + c.getName());
				// memberId --> 시간을 0으로 돌리고 다시 response 에 담아 준다.
				c.setMaxAge(0);   //초단위 : 0으로 하면 삭제 효과
				response.addCookie(c);
			}
		}else {
			// 쿠키 저장하는 코드 why ? ( 기억하라고 허락했으니까 )
			serverCookie = new Cookie("memberId", mId);
			response.addCookie(serverCookie);
		}
		response.sendRedirect("home.jsp");
		
		
		
		System.out.println(isSaveId + "<<<<<<<");
		
//		// JSESSIONID : 자바로 만들어진 서버 프로그램에서 기본적으로 부라우저가 첫 요청시에 발급하는 쿠키 입니다.
//		for (Cookie reqCookie : cookies) {
//			System.out.println("req-Cookie" + reqCookie);
//			System.out.println("cookie name :" + reqCookie.getName());
//			System.out.println("cookie value" + reqCookie.getValue());
//			
//			if(reqCookie.getName().equals("memberId")) {
//				serverCookie = reqCookie;
//			}
//			
//			
//		}
		
//		// 브라우저에게 넘겨준 쿠키 이름이 memberId가 없다면
//		// 서버측에서 생성한 쿠키를 담아라
//		if(serverCookie == null) {
//			System.out.println("내가 생성한 쿠키가 없다면 다시 만듭니다. ");
//			serverCookie = new Cookie("memberId", mId);
//		}
//		
//		serverCookie.setMaxAge(60 * 60);
//		System.out.println(serverCookie.getMaxAge());
//		response.addCookie(serverCookie);
//		
////		response.sendRedirect("home.jsp");
		
	}
	
	

}
