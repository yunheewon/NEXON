package com.nexon.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Logout implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String path = "nexon.gd?type=index";
		
		HttpSession session = request.getSession(false);
		
		//세션 지우기
		if(session!=null)
			session.invalidate();
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
