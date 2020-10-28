package com.nexon.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nexon.dao.UserDAO;
import com.nexon.dto.NexonUser;

public class Join implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		NexonUser nexonUser = new NexonUser();
		
		String userId = request.getParameter("userId");
		String userPw = request.getParameter("userPw");
		String nickName = request.getParameter("nickName");
		String email = request.getParameter("email");
		
		System.out.println(userId);
		System.out.println(userPw);
		System.out.println(nickName);
		System.out.println(email);
		
		nexonUser.setUserId(userId);
		nexonUser.setUserPw(userPw);
		nexonUser.setNickName(nickName);
		nexonUser.setEmail(email);
		
		UserDAO uControl = UserDAO.getInstance();
		uControl.insertUser(nexonUser);
		
		String path = "/join/join_complete.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

}
