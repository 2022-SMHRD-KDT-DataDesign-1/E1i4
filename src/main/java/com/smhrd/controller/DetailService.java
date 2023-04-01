package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.MovieDAO;
import com.smhrd.model.MovieVO;
import com.smhrd.model.testimonialDAO;
import com.smhrd.model.testimonialVO;

public class DetailService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		// 상세페이지 - 영화 정보	
		
		testimonialVO movie_one = null;
		
		String movie_id = request.getParameter("movie_id");
		String movie_title = request.getParameter("movie_title");
		String movie_date = request.getParameter("movie_date");
		String actors = request.getParameter("actors");
		String movie_rate = request.getParameter("movie_rate");
		String movie_time = request.getParameter("movie_time");
		String synopsis = request.getParameter("synopsis");
		String trailer = request.getParameter("trailer");
		String movie_age = request.getParameter("movie_age");
		String movie_genre = request.getParameter("movie_genre");
		
		System.out.println(movie_id+ movie_title+ movie_date+ actors+ movie_rate+ movie_time+ synopsis+ trailer+ movie_age+ movie_genre);
		
		testimonialVO vo = new testimonialVO(movie_id, movie_title, movie_date, actors, movie_rate, movie_time, synopsis, trailer, movie_age, movie_genre);
		
		testimonialDAO dao = new testimonialDAO();
		
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
