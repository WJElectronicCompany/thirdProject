package com.wj.client.model.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import com.wj.client.model.VO.CommentVO;
import com.wj.utils.ConnUtil;

public class CommentDAO {
	private static CommentDAO instance = null;
	private CommentDAO() {}

	public static CommentDAO getInstance() {
		if(instance==null) {
			synchronized (ClientNoticeDAO.class) {
				instance = new CommentDAO();
			}
		}
		return instance;
	}
	
	//-------------------------------------- ClientNotice table Query--------------------------------------//
	
	//댓글 다 가져오기
	public ArrayList<CommentVO> getAllComment(int asno) {
		ArrayList<CommentVO> arr = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement(
					"SELECT * FROM COMMENTAS where asno=?");
			
			pstmt.setInt(1, asno);
			rs = pstmt.executeQuery();
			arr = new ArrayList<>();
			while(rs.next()) {
				CommentVO cn = new CommentVO(); // 불러올 클라이언트 노티스
				cn.setCono(rs.getInt("cono"));
				cn.setId(rs.getString("id"));
				cn.setContent(rs.getString("content"));
				Date d = new Date(rs.getDate("sdate").getTime());
				cn.setDate(d);
				arr.add(cn);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			if(arr!=null) arr = null;
			
		} finally {
			if(rs!=null) try {rs.close();} catch(SQLException sqle1) {}
			if(pstmt!=null) try {pstmt.close();} catch(SQLException sqle1) {}
			if(conn!=null) try {conn.close();} catch(SQLException sqle1) {}
		}
		return arr;
	}
	
	// 게시글 번호 가져오는 함수
		public int getNext() {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			String SQL = "SELECT cono FROM COMMENTAS ORDER BY cono DESC";

			try {
				conn = ConnUtil.getConnection();
				pstmt = conn.prepareStatement(SQL);

				rs = pstmt.executeQuery();

				if (rs.next()) {

					return rs.getInt(1) + 1;

				}

				return 1;// 첫 번째 게시물인 경우

			} catch (Exception e) {

				e.printStackTrace();

			}finally {
				if (rs != null)
					try {
						rs.close();
					} catch (SQLException sqle1) {
					}
				if (pstmt != null)
					try {
						pstmt.close();
					} catch (SQLException sqle1) {
					}
				if (conn != null)
					try {
						conn.close();
					} catch (SQLException sqle1) {
					}
			}

			return -1; // 데이터베이스 오류

		}

		public int write(int asno, String id, String content) {
			Connection conn = null;
			PreparedStatement pstmt = null;

			try {
				conn = ConnUtil.getConnection();
				pstmt = conn.prepareStatement("INSERT INTO COMMENTAS VALUES(?, ?, ?, sysdate, ?)");

				pstmt.setInt(1, getNext());

				pstmt.setInt(2, asno);

				pstmt.setString(3, id);

				pstmt.setString(4, content);


				return pstmt.executeUpdate();

			} catch (SQLException e) {
				e.printStackTrace();

			} finally {
				if (pstmt != null)
					try {
						pstmt.close();
					} catch (SQLException sqle1) {
					}
				if (conn != null)
					try {
						conn.close();
					} catch (SQLException sqle1) {
					}
			}

			return 0;
		}
	
	
	
	
}
