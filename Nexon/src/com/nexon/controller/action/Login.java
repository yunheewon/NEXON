package com.nexon.controller.action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nexon.dao.UserDAO;
import com.nexon.dto.NexonUser;

public class Login implements Action {
	
	public static int loginCheck = 0;

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String path = "/login/login.jsp";
		
		//session을 사용하기 위한 변수 지정
		HttpSession session = request.getSession();
		
		//Login Form에서 사용할 값 가져오기
		String login_id = request.getParameter("login_id");
		String login_pwd = request.getParameter("login_pwd");
		String message = "";
		
		//System.out.println(login_id);
		//System.out.println(login_pwd);
		
		//DAO 연동
		UserDAO uControl = UserDAO.getInstance();
		
		//결과값 저장
		NexonUser nResult = uControl.selectUser(login_id);
		
		if(nResult != null) {//입력값이 있을 때
			if(nResult.getUserPw().equals(login_pwd)) {//비밀번호가 일치할 때
				path = "/index_login.jsp";
				session.removeAttribute(login_id);
				session.setAttribute("loginUserInfo", nResult);
			}else {
				message = "비밀번호를 다시 입력해주세요.";
				request.setAttribute("message", message);
			}
		}else {//입력값이 없을 때
			message = "입력하신 정보와 일치하는 회원정보가 없습니다.";
			request.setAttribute("message", message);
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
