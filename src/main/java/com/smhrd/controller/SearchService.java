package com.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.MovieDAO;
import com.smhrd.model.MovieVO;

public class SearchService implements Command {
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String searchKeyword = request.getParameter("searchKeyword");
		
		System.out.println(searchKeyword);
		
		MovieDAO dao = new MovieDAO();
		List<MovieVO> list = dao.searchMovie(searchKeyword);
		
		if(list != null) {
			System.out.println("search success");
			HttpSession session = request.getSession();
			session.setAttribute("searchResult", list);
		} else {
			System.out.println("search fail");
		}
		
			
		return "searchResult.jsp";
	}

}
