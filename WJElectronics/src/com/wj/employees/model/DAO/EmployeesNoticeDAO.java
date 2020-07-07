package com.wj.employees.model.DAO;

public class EmployeesNoticeDAO {
	private static EmployeesNoticeDAO instance = null;
	private EmployeesNoticeDAO() {}

	public static EmployeesNoticeDAO getInstance() {
		if(instance==null) {
			synchronized (EmployeesNoticeDAO.class) {
				instance = new EmployeesNoticeDAO();
			}
		}
		return instance;
	}
	
	
	//-------------------------------------- EmployeesNotice table Query--------------------------------------//
	
	
	
	
}
