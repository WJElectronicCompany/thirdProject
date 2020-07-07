package com.wj.employees.model.DAO;

public class EmployeesDAO {
	private static EmployeesDAO instance = null;
	private EmployeesDAO() {}

	public static EmployeesDAO getInstance() {
		if(instance==null) {
			synchronized (EmployeesDAO.class) {
				instance = new EmployeesDAO();
			}
		}
		return instance;
	}
	
	
	//-------------------------------------- Employees table Query--------------------------------------//
	
	
}
