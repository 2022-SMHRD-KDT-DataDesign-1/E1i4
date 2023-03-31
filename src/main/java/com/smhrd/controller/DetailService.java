package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.MovieDAO;
import com.smhrd.model.MovieVO;

public class DetailService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		// 상세페이지 - 영화 정보	
		
		MovieVO movie_one = null;
		
		String movie_id = request.getParameter("movie_id");
		String movie_title = request.getParameter("movie_id");
		String genre = request.getParameter("movie_id");
		String movie_date = request.getParameter("movie_id");
		String actors = request.getParameter("movie_id");
		String movie_rate = request.getParameter("movie_id");
		String synopsis = request.getParameter("movie_id");
		String trailer = request.getParameter("movie_id");
		String movie_age = request.getParameter("movie_id");
		
		MovieVO vo = new MovieVO(movie_id, movie_title, genre, movie_date, actors, movie_rate, synopsis, trailer, movie_age);
		
		MovieDAO dao = new MovieDAO();
		
		movie_one = dao.SelectMovie(vo);
		
		if(movie_one != null) {
			System.out.println("영화정보 가져오기 성공");
			
			HttpSession session = request.getSession();
			session.setAttribute("movie_one", movie_one);
		} else {
			System.out.println("영화정보 가져오기 실패");
		}
		
		return "testimonial.jsp";
	}

}
