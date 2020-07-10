package com.wj.client.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wj.client.model.DAO.AsDAO;
import com.wj.client.model.DAO.CommentDAO;
import com.wj.client.model.VO.AsVO;
import com.wj.client.model.VO.CommentVO;
import com.wj.utils.CommandAction;

public class AsViewAction  implements CommandAction {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		AsDAO asDao = AsDAO.getInstance();
		CommentDAO cDao = CommentDAO.getInstance();		
		
		int i = Integer.parseInt(request.getParameter("asno"));
		AsVO result  = asDao.getAsOne(i);
		int cnt = asDao.getNext() - 1;
		
		ArrayList<CommentVO> arr = cDao.getAllComment(i);
		
		request.setAttribute("comment", arr);
		request.setAttribute("vo", result);
		request.setAttribute("lastPage", cnt);
		
		return "/client/AsView.jsp";
	}
}
