package com.wj.client.model.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import com.wj.client.model.VO.AsVO;
import com.wj.client.model.VO.ClientNoticeVO;
import com.wj.utils.ConnUtil;

public class ClientNoticeDAO {
	private static ClientNoticeDAO instance = null;
	private ClientNoticeDAO() {}

	public static ClientNoticeDAO getInstance() {
		if(instance==null) {
			synchronized (ClientNoticeDAO.class) {
				instance = new ClientNoticeDAO();
			}
		}
		return instance;
	}
	
	
	//-------------------------------------- ClientNotice table Query--------------------------------------//
	//WJElectronics/client/join.do?
	public ArrayList<ClientNoticeVO> getNoticeList(int pageNum) {
		ArrayList<ClientNoticeVO> arr = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement(
					"SELECT * FROM "
					+ "(SELECT ROWNUM as A, clno, title, sdate FROM Cli_Notice) "
					+ "WHERE A >= ? AND A <= ?");
			
			pstmt.setInt(1, 10 * (pageNum-1) + 1);
			pstmt.setInt(2, 10 * pageNum);
			rs = pstmt.executeQuery();
			arr = new ArrayList<>();
			while(rs.next()) {
				ClientNoticeVO cn = new ClientNoticeVO(); // 불러올 클라이언트 노티스
				cn.setClno(rs.getString("clno"));
				cn.setTitle(rs.getString("title"));
				Date d = new Date(rs.getDate("sdate").getTime());
				cn.setSdate(d);
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
	
	public int getListCount() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 0;
		try {
			conn = ConnUtil.getConnection();

			pstmt = conn.prepareStatement(
					"SELECT count(*) FROM cli_Notice");
			rs = pstmt.executeQuery();
			if(rs.next()) result = rs.getInt(1);
			else result = 0;
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if(rs!=null) try {rs.close();} catch(SQLException sqle1) {}
			if(pstmt!=null) try {pstmt.close();} catch(SQLException sqle1) {}
			if(conn!=null) try {conn.close();} catch(SQLException sqle1) {}
		}
		return result;
	}
	
	/*
	// 게시글 번호 가져오는 함수

	   public int getNext() { 
	      Connection conn = null;
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      
	      
	      
	      String SQL = "SELECT id FROM as1 ORDER BY id DESC";

	      try {
	         conn = ConnUtil.getConnection();
	         pstmt = conn.prepareStatement(SQL);

	         rs = pstmt.executeQuery();

	         if(rs.next()) {

	            return rs.getInt(1) + 1;

	         }

	         return 1;//첫 번째 게시물인 경우

	      } catch (Exception e) {

	         e.printStackTrace();

	      }

	      return -1; //데이터베이스 오류

	   }*/

	   
/*
	   //실제로 글을 작성하는 함수

	   public int write(String title, String id, String product, String content) { 
	      
	      Connection conn = null;
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      
	      String SQL = "INSERT INTO as1 VALUES(?, ?, ?, ?, ?, ?, ?)";

	      try {

	         conn = ConnUtil.getConnection();
	         pstmt = conn.prepareStatement(SQL);
	         rs = pstmt.executeQuery();
	         
	         pstmt.setInt(1, getNext());

	         pstmt.setString(2, title);

	         pstmt.setString(3, id);

	         pstmt.setString(4, product);

	         pstmt.setString(5, content);

	         pstmt.setDate(6, rs.getDate("sdate"));
	         
	         pstmt.setInt(7,1);

	         

	         return pstmt.executeUpdate();

	         

	      } catch (Exception e) {

	         e.printStackTrace();

	      }

	      return -1; //데이터베이스 오류

	   }*/
}