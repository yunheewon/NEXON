package com.nexon.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nexon.dao.UserDAO;
import com.nexon.dto.NexonUser;

public class Resign implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String pwd = request.getParameter("pwd");
		String resultId = "";
		
		UserDAO uControl = UserDAO.getInstance();
		
		Cookie[] cookies = request.getCookies();
		for(int i=0; i<cookies.length; i++){
			String checkId = cookies[i].getName();
			
			if(checkId.length() > 5 && checkId != "JSESSIONID"){
				resultId = checkId;
			}
		}
		
		NexonUser nResult = uControl.selectUser(resultId);
		if(nResult.getUserPw().equals(pwd)){
			uControl.resign(resultId, pwd);
		}

		
		String path = "nexon.gd?type=index";
		
		HttpSession session = request.getSession(false);
		
		if(session!=null)
			session.invalidate();
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
