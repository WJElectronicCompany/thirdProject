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
	public ArrayList<ClientNoticeVO> getNoticeList(int pageNumber) {
		ArrayList<ClientNoticeVO> arr = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement(
					"SELECT clno, title, sdate FROM Cli_Notice WHERE clno < ? ORDER BY clno DESC LIMIT 10");
			
			pstmt.setInt(1, getNum() - (pageNumber -1) * 10);
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
	
	
	//게시글 번호 가져오기
		public int getNum() {
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			String sql = "Select clno from Cli_Notice order by clno desc";
			try {
				conn = ConnUtil.getConnection();
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					return rs.getInt(1) + 1;
				}
				return 1; //첫번째 게시물인 경우
			
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				if(rs!=null) try {rs.close();} catch(SQLException sqle1) {}
				if(pstmt!=null) try {pstmt.close();} catch(SQLException sqle1) {}
				if(conn!=null) try {conn.close();} catch(SQLException sqle1) {}
			}
			return -1; //데이터 베이스 오류
		}
		
		//게시글 작성하는 함수
		public int write(String title, String id, String pr,String content) {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			String sql = "insert into cli_notice(clno,id,title,content) VALUES (?,?,?,?)";
			
			try {
				conn = ConnUtil.getConnection();
				pstmt = conn.prepareStatement(sql);
				
				Date d = new Date(rs.getDate("sdate").getTime());
	            
				
				pstmt.setInt(1, getNum());
				pstmt.setString(2, title);
				pstmt.setString(3, id);
				pstmt.setString(4, pr);
				pstmt.setString(5, content);
				pstmt.setDate(6, (java.sql.Date) d);
				pstmt.setInt(7, 1);
				
				return pstmt.executeUpdate();
			
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return -1;
		}
		
		/*public ArrayList<AsVO> getList(int pageNumber){ 

			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			String SQL = "SELECT * FROM cli_notice WHERE ID < ? Available = 1 ORDER BY ID DESC LIMIT 10";

			ArrayList<AsVO> list = new ArrayList<AsVO>();
			

			try {

				pstmt = conn.prepareStatement(SQL);

				pstmt.setInt(1, getNum() - (pageNumber -1) * 10);

				rs = pstmt.executeQuery();

				while (rs.next()) {

					AsVO av = new AsVO();

					av.setAsNo(rs.getInt(1));

					av.setTitle(rs.getString(2));

					av.setId(rs.getString(3));

					av.setSdate(rs.getString(4));

					av.setContent(rs.getString(5));

					av.setAvailable(rs.getInt(6));

					list.add(av);

				}

			} catch (Exception e) {

				e.printStackTrace();

			}

			return list; 

		}*/


		
		//게시글 10단위 페이징 처리 함수
		public boolean nextPage(int pageNumber) {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			String sql = "SELECT * FROM cli_notice where clno<? order by clno desc limit 10"; 
			ArrayList<ClientNoticeVO> list = new ArrayList<>();
			
			try {
				conn = ConnUtil.getConnection();
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1, getNum() - (pageNumber-1)*10);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					return true;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return false;
		}
	
}
