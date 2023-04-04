package com.smhrd.frontcontroller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MemberVO;
import com.smhrd.model.testimonialDAO;
import com.smhrd.model.testimonialVO;

public class WishService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		MemberVO login_vo = (MemberVO)session.getAttribute("login_vo");
		String member_id = login_vo.getMember_id();
		String movie_id = (String)session.getAttribute("movie_id");
		
		testimonialVO vo = new testimonialVO(member_id, movie_id);

		testimonialDAO dao = new testimonialDAO();
		//int cnt = dao.likeCheck(vo);
		dao.likeCheck(vo);
		
	
	
	}

}
