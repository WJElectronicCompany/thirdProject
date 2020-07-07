package com.wj.client.model.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.wj.utils.ConnUtil;

public class ClientDAO {
	private static ClientDAO instance = null;
	private ClientDAO() {}

	public static ClientDAO getInstance() {
		if(instance==null) {
			synchronized (ClientDAO.class) {
				instance = new ClientDAO();
			}
		}
		return instance;
	}
	
	
	//-------------------------------------- Client table Query--------------------------------------//
	
	
	// 로그인결과 반환 메서드
	public int getLoginResult(String id, String pw) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 0;
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement(
					"SELECT pw FROM client WHERE id = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString("pw").equals(pw)) {
					result = 1;	// 로그인 성공
				} else {
					result = -2;  // 비밀번호 틀림
				}
			} else {
				result = -1; // 아이디가 없는 경우
			}
		} catch (SQLException e) {
			e.printStackTrace();
			result = -3; // 데이터베이스 오류
		} finally {
			if(rs!=null) try {rs.close();} catch(SQLException sqle1) {}
			if(pstmt!=null) try {pstmt.close();} catch(SQLException sqle1) {}
			if(conn!=null) try {conn.close();} catch(SQLException sqle1) {}
		}
		return result;
	}
	
	// 아이디 중복 체크
	public int idDoubleCheck(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 0;
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement(
					"SELECT pw FROM client WHERE id = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = -1; // 아이디 중복
			} else {
				result = 1; // 사용가능한 아이디(중복X)
			}
		} catch (SQLException e) {
			e.printStackTrace();
			result = -3; // 데이터베이스 오류
		} finally {
			if(rs!=null) try {rs.close();} catch(SQLException sqle1) {}
			if(pstmt!=null) try {pstmt.close();} catch(SQLException sqle1) {}
			if(conn!=null) try {conn.close();} catch(SQLException sqle1) {}
		}
		return result;
	}
	
}
