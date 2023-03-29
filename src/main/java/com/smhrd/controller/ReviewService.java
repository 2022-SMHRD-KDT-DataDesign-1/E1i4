package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.YoutubeVO;

public class ReviewService implements Command {
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		YoutubeVO youtube_vo = null;
		
		String youtube_itle = request.getParameter("youtube_title");
		String youtube_link = request.getParameter("youtube_link");
		
		System.out.println(youtube_itle+youtube_link);
		
		return null;
		
	}


}
