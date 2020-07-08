package com.wj.client.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wj.client.model.DAO.ProductDAO;
import com.wj.client.model.VO.ProductVO;
import com.wj.utils.CommandAction;

public class ProductListAction implements CommandAction {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		String category = request.getParameter("category");
		ProductDAO productDao = ProductDAO.getInstance();
		int pageNum = Integer.parseInt(request.getParameter("pageNum"));
		
		if(category.equals("all")) {
			ArrayList<ProductVO> productList = productDao.getProductListAll(pageNum);
			
			request.setAttribute("pageNum", pageNum);
			request.setAttribute("productList", productList);
		} else {
			ArrayList<ProductVO> productList = productDao.getProductListToCategory(category);
			
			request.setAttribute("productList", productList);
		}
		
		return "/client/productListForm.jsp";
	}
}
