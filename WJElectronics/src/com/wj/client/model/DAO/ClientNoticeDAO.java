package com.wj.client.model.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

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
	//WJElectronics/client/join.do?cmd='join'
	public ArrayList<ClientNoticeVO> getNoticeList() {
		ArrayList<ClientNoticeVO> arr = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement(
					"SELECT clno, title, sdate  FROM Cli_Notice");
			
			rs = pstmt.executeQuery();
			arr = new ArrayList<>();
			while(rs.next()) {
				ClientNoticeVO cn = new ClientNoticeVO(); // 불러올 클라이언트 노티스
				cn.setClno(rs.getString("clno"));
				cn.setTitle(rs.getString("title"));
				Date d = new Date(rs.getDate("sdate").getTime());
				cn.setSdate(d);
				System.out.println(rs.getString("title"));
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
