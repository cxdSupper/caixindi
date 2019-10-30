package com.cxd.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cxd.bean.Concert;
import com.cxd.service.imp.ConcertServiceImpl;

/**
 * Servlet implementation class ChengshiServlet
 */
@WebServlet("/ChengshiServlet")
public class ChengshiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String city =new String(request.getParameter("city").getBytes("ISO-8859-1"),"UTF-8");
		List<Concert> list = new ConcertServiceImpl().findByCity("长沙");
		System.out.println(list);
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("yanchanghui.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
