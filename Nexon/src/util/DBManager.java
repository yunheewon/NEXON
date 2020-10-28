package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBManager {

	//JDBC 형식 URL
	//jdbc:oracle:thin 까지는 default
	//localhost : 오라클 서버가 작동하고 있는 컴퓨터의 IP주소
	//1521 : 포트번호
	//XE : 오라클 서버의 전역 데이터베이스 이름
	private static String url = "jdbc:oracle:thin:@localhost:1521:XE";
	//사용자명
	private static String uid = "gd25th12";
	//패스워드
	private static String pwd = "gd1234";
	
	//DB 연결을 위한 메서드
	public static Connection getConnection() {
		Connection conn = null;
		try {
			//jdbc 드라이버를 로드하면 OrcaleDriver 객체가 생성됩니다.
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, uid, pwd);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return conn;
	}
	
	//Connection 객체 : 데이터베이스의 연결을 지원합니다.
	//PreparedStatement 객체 : SQL 표준 쿼리문을 수행하기 위하여 사용합니다.
	//ResultSet 객체 : 레코드 단위로 결과를 가져옵니다.
	
	//DB 연결을 해제하기 위한 메서드
	public static void close(Connection conn, PreparedStatement pstnt, ResultSet rset) {
		if(rset!=null) {
			try {
				rset.close();
			} catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		if(pstnt!=null) {
			try {
				pstnt.close();
			} catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		if(conn!=null) {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
		
	//DB 연결을 해제하기 위한 메서드
	public static void close(Connection conn, PreparedStatement pstnt) {
		if(pstnt!=null) {
			try {
				pstnt.close();
			} catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		if(conn!=null) {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
}
