package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberVO;

public class LoginService implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = "";
		MemberVO login_vo = null;		
		 String member_id = request.getParameter("member_id");
	     String member_pw = request.getParameter("member_pw");			
	     System.out.println(member_id+member_pw);
	     MemberVO vo = new MemberVO(member_id, member_pw);
	     MemberDAO dao = new MemberDAO();
	     login_vo = dao.login(vo);		      
	      if(login_vo != null ) {
	    	  System.out.println("로그인 성공");
	    	  HttpSession session = request.getSession();
	    	  session.setAttribute("login_vo", login_vo);
	    	  moveURL="index-goun.jsp";
	      }else {
	    	
	    	  System.out.println("로그인 실패 ");
	    	  moveURL="Login_3.jsp";
	      }
	      return moveURL;
	}
	
}
