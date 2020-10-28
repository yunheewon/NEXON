package com.nexon.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.nexon.dto.NexonUser;

import util.DBManager;

public class UserDAO {

	public UserDAO() {
		// TODO Auto-generated constructor stub
	}

	private static UserDAO instance = new UserDAO();
	
	public static UserDAO getInstance() {
		return instance;
	}
	
	//회원 정보 저장
	public int insertUser(NexonUser nexonUser) {
		System.out.println("insertMember()");
		
		int result = 0;
		
		String sql = "INSERT INTO NexonUser(userId,userPw,nickName,email) VALUES(?, ?, ?, ?)"; 
		
		Connection conn = null;
		PreparedStatement pstnt = null;
		
		try {
			conn = DBManager.getConnection();
			pstnt = conn.prepareStatement(sql);
			
			pstnt.setString(1, nexonUser.getUserId());
			pstnt.setString(2, nexonUser.getUserPw());
			pstnt.setString(3, nexonUser.getNickName());
			pstnt.setString(4, nexonUser.getEmail());
			
			result = pstnt.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstnt);
		}
		
		return result;
	}
	
	//회원 정보 불러오기
	public NexonUser selectUser(String id) {
		System.out.println("selectUser : " + id);
		NexonUser nexonUser = null;
		
		String sql = "SELECT * FROM NexonUser WHERE userId = ?";
		
		Connection conn = null;
		PreparedStatement pstnt = null;
		ResultSet rset = null;
		
		try {
			conn = DBManager.getConnection();
			
			pstnt = conn.prepareStatement(sql);
			pstnt.setString(1, id);
			rset = pstnt.executeQuery();
			
			if(rset.next()) {
				String userId = rset.getString("userId");
				String userPw = rset.getString("userPw");
				String nickName = rset.getString("nickName");
				String email = rset.getString("email");
				
				System.out.println(userId);
				System.out.println(userPw);
				System.out.println(nickName);
				System.out.println(email);
				
				nexonUser = new NexonUser();
				nexonUser.setUserId(userId);
				nexonUser.setUserPw(userPw);
				nexonUser.setNickName(nickName);
				nexonUser.setEmail(email);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstnt, rset);
		}
		
		return nexonUser;
	}
	
	//아이디 중복확인
	public int duplecateID(String id) {
		int cnt=0;
		
		Connection conn = null;
		PreparedStatement pstnt = null;
		ResultSet rset = null;
		
		try {
			conn = DBManager.getConnection();
			String sql = "SELECT count(userId) as cnt FROM nexonuser WHERE userId = ?";
			
			pstnt = conn.prepareStatement(sql);
			pstnt.setString(1, id);
			rset = pstnt.executeQuery();
			
			if(rset.next()) {
				cnt = rset.getInt("cnt");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstnt, rset);
		}
		
		System.out.println("cnt");
		
		return cnt;
	}
	
	//이메일 중복확인
	public int duplecateEmail(String email) {
		int cnt=0;
		
		Connection conn = null;
		PreparedStatement pstnt = null;
		ResultSet rset = null;
		
		try {
			conn = DBManager.getConnection();
			String sql = "SELECT count(email) as cnt FROM nexonuser WHERE email = ?";
			
			pstnt = conn.prepareStatement(sql);
			pstnt.setString(1, email);
			rset = pstnt.executeQuery();
			
			if(rset.next()) {
				cnt = rset.getInt("cnt");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstnt, rset);
		}
		
		System.out.println("cnt");
		
		return cnt;
	}
	
	//아이디 찾기 - 회원 가입 시 저장된 이메일 이용
	public NexonUser idFind(String checkId) {
		System.out.println("selectUser : " + checkId);
		NexonUser nexonUser = null;
		
		String sql = "SELECT * FROM NexonUser WHERE email = ?";
		
		Connection conn = null;
		PreparedStatement pstnt = null;
		ResultSet rset = null;
		
		try {
			conn = DBManager.getConnection();
			
			pstnt = conn.prepareStatement(sql);
			pstnt.setString(1, checkId);
			rset = pstnt.executeQuery();
			
			if(rset.next()) {
				String userId = rset.getString("userId");
				String email = rset.getString("email");
				
				nexonUser = new NexonUser();
				nexonUser.setUserId(userId);
				nexonUser.setEmail(email);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstnt, rset);
		}
		
		return nexonUser;
	}
	
	//비밀번호 찾기 - 회원가입 시 저장된 아이디, 이메일 이용
	public NexonUser pwdFind(String checkId, String checkEmail) {
		System.out.println("selectUser : " + checkId + ", " + checkEmail);
		NexonUser nexonUser = null;
		
		String sql = 
				" SELECT userId, email, LPAD(SUBSTR(userpw, -7, 7), LENGTH(userpw), '*') as pwdFind" + 
				" FROM nexonuser" + 
				" WHERE userId = ? AND email = ? ";
		
		Connection conn = null;
		PreparedStatement pstnt = null;
		ResultSet rset = null;
		
		try {
			conn = DBManager.getConnection();
			
			pstnt = conn.prepareStatement(sql);
			pstnt.setString(1, checkId);
			pstnt.setString(2, checkEmail);
			rset = pstnt.executeQuery();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstnt, rset);
		}
		
		return nexonUser;
	}
	
	//개인정보 변경 - 아이디 변경
	public void idChange(String checkId, String useId) {
		System.out.println("SelectUser : " + useId);
		System.out.println("UpdateUser : " + checkId);
		
		String sql = "UPDATE nexonuser SET userid = ? WHERE userid = ?";
		
		Connection conn = null;
		PreparedStatement pstnt = null;
		ResultSet rset = null;
		
		try {
			conn = DBManager.getConnection();
			
			pstnt = conn.prepareStatement(sql);
			pstnt.setString(1, useId);
			pstnt.setString(2, checkId);
			rset = pstnt.executeQuery();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstnt, rset);
		}
		
	}
	
	//개인정보 변경 비밀번호 변경
	public void pwdChange(String checkId, String usePwd) {
		System.out.println("SelectUser : " + usePwd);
		System.out.println("UpdateUser : " + checkId);
		
		String sql = "UPDATE nexonuser SET userpw = ? WHERE userid = ?";
		
		Connection conn = null;
		PreparedStatement pstnt = null;
		ResultSet rset = null;
		
		try {
			conn = DBManager.getConnection();
			
			pstnt = conn.prepareStatement(sql);
			pstnt.setString(1, usePwd);
			pstnt.setString(2, checkId);
			rset = pstnt.executeQuery();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstnt, rset);
		}
		
	}
	
	//개인정보 변경 회원 삭제 
	public void resign(String checkId, String chekcPwd) {
		System.out.println("SelectUser : " + checkId);
		
		String sql = "DELETE FROM nexonuser WHERE userid = ? AND userpw = ?";
		
		Connection conn = null;
		PreparedStatement pstnt = null;
		ResultSet rset = null;
		
		try {
			conn = DBManager.getConnection();
			
			pstnt = conn.prepareStatement(sql);
			pstnt.setString(1, checkId);
			pstnt.setString(2, chekcPwd);
			rset = pstnt.executeQuery();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstnt, rset);
		}
		
	}
}
