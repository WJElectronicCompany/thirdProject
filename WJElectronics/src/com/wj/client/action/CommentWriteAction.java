package com.wj.client.action;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wj.client.model.DAO.AsDAO;
import com.wj.client.model.DAO.CommentDAO;
import com.wj.client.model.VO.AsVO;
import com.wj.client.model.VO.CommentVO;
import com.wj.utils.CommandAction;

public class CommentWriteAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		request.setCharacterEncoding("utf-8");
		AsDAO asDao = AsDAO.getInstance();
		CommentDAO coDao = CommentDAO.getInstance();
		CommentVO coVo = new CommentVO();
		
		int de = Integer.parseInt(request.getParameter("de"));
		int i = Integer.parseInt(request.getParameter("asno"));

		
		//�ڸ�Ʈ ����
		if(de == 1) {
			int no = Integer.parseInt(request.getParameter("cono"));
			
			coDao.deleteComment(no);
			
		}
		//��� �ޱ�
		else if(de == 2) {
			int parent = Integer.parseInt(request.getParameter("parent"));
			String comment_id = request.getParameter("id");
			String comment_content = request.getParameter("content");
			
			coDao.write2(i, comment_id,parent, comment_content);
		}
		
		//��� �ޱ�
		else {
			String comment_id = request.getParameter("id");
			String comment_content = request.getParameter("content");
			
			coDao.write(i, comment_id, comment_content);
		}
		
		AsVO result  = asDao.getAsOne(i);
		int cnt = asDao.getNext() - 1;
		
		ArrayList<CommentVO> arr = coDao.getAllComment(i);
		ArrayList<CommentVO> arr2 = coDao.getAllCComment(i);
		
		request.setAttribute("ccomment",arr2 );
		request.setAttribute("comment", arr);
		request.setAttribute("vo", result);
		request.setAttribute("lastPage", cnt);
		
		return "/client/AsView.jsp";
	}

}
