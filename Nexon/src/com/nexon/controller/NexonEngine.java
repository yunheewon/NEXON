package com.nexon.controller;

import com.nexon.controller.action.Action;
import com.nexon.controller.action.Index;
import com.nexon.controller.action.Join;
import com.nexon.controller.action.JoinForm;
import com.nexon.controller.action.Login;
import com.nexon.controller.action.LoginForm;
import com.nexon.controller.action.Logout;
import com.nexon.controller.action.PwdChange;
import com.nexon.controller.action.Resign;

public class NexonEngine {

	public NexonEngine() {
		// TODO Auto-generated constructor stub
	}
	
	private static NexonEngine instance = new NexonEngine();
	
	public static NexonEngine getInstance() {
		return instance;
	}
	
	public Action getType(String type) {
		Action act = null;
		System.out.println(type);
		
		if(type.equals("index")) {
			act = new Index();
		}else if(type.equals("joinForm")) {//회원가입 - 정보입력(화면)
			act = new JoinForm();
		}else if(type.equals("join")) {//회원가입 - 정보입력(서비스)
			act = new Join();
		}else if(type.equals("loginForm")) {//로그인(화면)
			act = new LoginForm();
		}else if(type.equals("login")) {//로그인(서비스)
			act = new Login();
		}else if(type.equals("logout")) {//로그아웃
			act = new Logout();
		}else if(type.equals("pwdChange")) {//비밀번호 변경
			act = new PwdChange();
		}else if(type.equals("resign")) {//회원 탈퇴
			act = new Resign();
		}
		
		return act;
	}
}
