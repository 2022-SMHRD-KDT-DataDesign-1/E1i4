package com.smhrd.frontcontroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.controller.BoardService;
import com.smhrd.controller.DeleteService;
import com.smhrd.controller.JoinService;
import com.smhrd.controller.LoginService;
import com.smhrd.controller.LogoutService;
import com.smhrd.controller.WishService;
import com.smhrd.controller.chatService;
import com.smhrd.controller.SearchService;

@WebServlet("*.do")
public class Frontcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[Frontcontroller]");		
		request.setCharacterEncoding("UTF-8");		
		String reqURL = request.getRequestURI();
		System.out.println("어디 주소: "+ reqURL);		
		String contextPath = request.getContextPath();
		System.out.println("콘텐츠 경로: " + contextPath);		
		String result = reqURL.substring(contextPath.length()+1);
		System.out.println("최종 요청: "+ result);
		Command service = null;
		
		
		
		if(result.equals("LoginService.do")) {
			//로그인 기능 
			 service =new LoginService();
		} else if(result.equals("JoinService.do")) {		    	  
    	  //회원 가입 서비스 
		   service = new JoinService();
	      }else if(result.equals("LogoutService.do")) {	    	  
	  		// 로그아웃 기능
	  		 service = new LogoutService();
	      }else if (result.equals("DeleteService.do")) {
	    	  //삭제 서비스     	
	    	   service =  new DeleteService();
	      }else if (result.equals("BoardService.do")) {
	    	  //Board 서비스
	    	   service =  new BoardService();
	      }else if (result.equals("WishService.do")) {
	    	  //찜 기능
	    	  service = new WishService();
	      }


		if (result.equals("LoginService.do")) {
			// 로그인 기능
			service = new LoginService();
		} else if (result.equals("JoinService.do")) {
			// 회원 가입 서비스
			service = new JoinService();
		} else if (result.equals("LogoutService.do")) {
			// 로그아웃 기능
			service = new LogoutService();
		} else if (result.equals("UpdateService.do")) {
			// 업데이트 서비스
			service = new SearchService();
		} else if (result.equals("DeleteService.do")) {
			// 삭제 서비스
			service = new DeleteService();
		} else if (result.equals("BoardService.do")) {
			// Board 서비스
			service = new BoardService();
		} else if (result.equals("SearchService.do")) {
			// search
			service = new SearchService();
		} else if (result.equals("chatService.do")) {
			// search
			service = new chatService();
		}

		String moveURL= service.execute(request, response);
		response.sendRedirect(moveURL);
		
				
	}

}
