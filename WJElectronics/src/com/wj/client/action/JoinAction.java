package com.wj.client.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wj.client.model.DAO.ClientDAO;
import com.wj.utils.CommandAction;

public class JoinAction implements CommandAction {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		ClientDAO clientDao = ClientDAO.getInstance();
		String cmd = request.getParameter("cmd");
		String id = request.getParameter("id");
		
		if(cmd.equals("idDoubleCheck")) {
			int result  = clientDao.idDoubleCheck(id);
			request.setAttribute("result", result);
		}
		
		return "/client/joinPro.jsp";
	}
}
