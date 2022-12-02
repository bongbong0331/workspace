package com.boot;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.MovieDAO;
import com.dto.MovieDTO;

@WebServlet("/moviesave")
public class MovieInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MovieInsertServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//		MovieDAO dao = new MovieDAO();
		// 하나의 무비 dto를 매개변수 
		
		request.setCharacterEncoding("UTF-8");
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		MovieDAO dao = new MovieDAO();
		MovieDTO dto = new MovieDTO();
		
		dto.set번호(request.getParameter("num"));
		dto.set이름(request.getParameter("name"));
		dto.set개봉연도(request.getParameter("date"));
		dto.set매출액(request.getParameter("totalPrice"));
		dto.set관객수(request.getParameter("audience"));
		dto.set평점(request.getParameter("grade"));
		
		dao.insertMovie(dto);
		
		int result = dao.insertMovie(dto);
		if(result == 1) {
			out.write("등록됨");
		}
		
		
	}

}
