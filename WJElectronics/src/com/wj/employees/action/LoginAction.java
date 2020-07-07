package com.wj.employees.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wj.employees.model.DAO.EmployeesDAO;
import com.wj.utils.CommandAction;

public class LoginAction implements CommandAction {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		EmployeesDAO employeesDao = EmployeesDAO.getInstance();
		
		
		return "/employees/login.jsp";
	}
}
