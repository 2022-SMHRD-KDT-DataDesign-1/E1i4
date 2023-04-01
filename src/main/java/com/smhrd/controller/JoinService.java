package com.smhrd.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberVO;

public class JoinService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = "";
		String member_id = request.getParameter("member_id");
		String member_pw = request.getParameter("member_pw");
		String nickname = request.getParameter("nickname");
		String member_pwck = request.getParameter("member_pwck");
		System.out.println(member_id + member_pw + nickname  + member_pwck);
		MemberVO vo = new MemberVO (member_id, member_pw, nickname,member_pwck);
	     MemberDAO dao = new MemberDAO();
	     int cnt =dao.insertMember(vo);		      
	     
	      System.out.println("----------------");
	      if(cnt > 0) {
	          System.out.println("회원가입 성공");
	          //RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
//	          request.setAttribute("member_id", member_id);
	          moveURL = "JoinSuccess.jsp?member_id="+member_id;
	       } else {
	          System.out.println("회원가입 실패");
	          moveURL ="join.jsp";
	       }
	      
	      return moveURL;
	}	
	
}
