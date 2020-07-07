package com.wj.client.model.DAO;

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
	
	
	
	
}
