package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberVO;
import com.smhrd.model.testimonialDAO;
import com.smhrd.model.testimonialVO;

public class WishService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		int like_vo = 0;
		String like_check = request.getParameter("like_check");
		System.out.println(like_check);

//		MemberVO vo = new MemberVO(email, pw);
//		MemberDAO dao = new MemberDAO();
//		login_vo = dao.login(vo);

		testimonialVO vo = new testimonialVO(like_check);
		testimonialDAO dao = new testimonialDAO();
		like_vo = dao.likeCheck(vo);
		
		if(like_vo > 0) {
			System.out.println("찜!");
			HttpSession session = request.getSession();
			session.setAttribute("like_vo", like_vo);
		}else {
			System.out.println("찜 실패");
		}
		
		
		return "testimonial.jsp";
	}

}
