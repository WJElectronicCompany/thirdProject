package com.wj.client.model.DAO;

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
	
	
	
	
}
