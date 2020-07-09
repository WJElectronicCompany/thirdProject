package com.wj.client.model.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import com.wj.client.model.VO.AsVO;
import com.wj.utils.ConnUtil;

public class AsDAO {
	
	private static AsDAO instance = null;
	private AsDAO() {}

	public static AsDAO getInstance() {
		if(instance==null) {
			synchronized (AsDAO.class) {
				instance = new AsDAO();
			}
		}
		return instance;
	}
	
	
	//-------------------------------------- AS table Query--------------------------------------//
	public ArrayList<AsVO> getNoticeList(int pageNum) {
		ArrayList<AsVO> arr = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement(
					"SELECT * FROM "
					+ "(SELECT ROWNUM as A, asno, title, id, sdate FROM as1) "
					+ "WHERE A >= ? AND A <= ?");
			
			pstmt.setInt(1, 10 * (pageNum-1) + 1);
			pstmt.setInt(2, 10 * pageNum);
			rs = pstmt.executeQuery();
			arr = new ArrayList<>();
			while(rs.next()) {
				AsVO cn = new AsVO(); // 불러올 클라이언트 노티스
				cn.setAsNo(rs.getInt("asno"));
				cn.setTitle(rs.getString("title"));
				cn.setWriter(rs.getString("id"));
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
	
	
	
}
