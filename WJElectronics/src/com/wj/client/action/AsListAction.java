package com.wj.client.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wj.client.model.DAO.AsDAO;
import com.wj.client.model.VO.AsVO;
import com.wj.utils.CommandAction;

public class AsListAction implements CommandAction {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		AsDAO clientNoticeDao = AsDAO.getInstance();
		
		int i = Integer.parseInt(request.getParameter("pagenumber"));
		ArrayList<AsVO> result  = clientNoticeDao.getNoticeList(i);
		int cnt = clientNoticeDao.getNext() - 1;
		int pageSize = 10;//�� ������ �ȿ� ���� �Խñ� ��
		
		request.setAttribute("pageSize", pageSize); 
		request.setAttribute("count", cnt); //�� �Խñ� �� 
		request.setAttribute("pageNum", i);
		request.setAttribute("vo", result);
		
		return "/client/asListForm.jsp";
	}
}
