package com.nmcnpm.web.controller.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nmcnpm.web.dao.impl.AccountDAO;
import com.nmcnpm.web.dao.impl.CustomerDAO;
import com.nmcnpm.web.model.Account;
import com.nmcnpm.web.model.Customer;

/**
 * Servlet implementation class AccountManagment
 */
//@WebServlet({ "/AccountInfo", "/UpdateInfo" })
public class AccountManagmentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AccountManagmentController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String userPath = request.getServletPath();
//		HttpSession session = request.getSession();
//		CustomerDAO customerorderdao = new CustomerDAO();
//		long customerid=0;
//		customerid= (long) session.getAttribute("customerid");
//		
//		
//		if (userPath.equals("/accountInfo")) {
//		
//			if(customerid==0) {
//				request.getRequestDispatcher("/templates/login.jsp").forward(request, response);
//			}else 
//		{
//			
//			Customer customer = customerorderdao.findById(customerid);
//			session.setAttribute("customer", customer);
//			request.getRequestDispatcher("/templates/usermanagement.jsp").forward(request, response);
//		 
//		
//	      }
//		
//		
//		}	else if (userPath.equals("/updateInfo"))
//		  {
//			AccountDAO accountDAO = new AccountDAO();
//		
//			Customer customer = (Customer) session.getAttribute("customer");
//			String username = request.getParameter("fullname");
//			String address = request.getParameter("address");
//			String cityRegion = request.getParameter("cityRegion");
//			
//			if(username.isEmpty()|address.isEmpty()|cityRegion.isEmpty()) {
//			request.setAttribute("message", "Vui lòng điền đầy đủ thông tin của bạn.");	
//			}
//			customer.setName(username);
//			customer.setAddress(address);
//			customer.setCityRegion(cityRegion);
//		   customerorderdao.update(customer);
//			
//			Account account = accountDAO.findById(customerid);
//			String checkChangePass = request.getParameter("change_pass");
//			if (checkChangePass.equals("true")) {
//				String oldPass = request.getParameter("oldpassword");
//				String newPass = request.getParameter("newpassword");
//				if (account.getPassword().equals(oldPass)) {
//					account.setPassword(newPass);
//					accountDAO.update(account);
//					boolean check = accountDAO.findById(customerid).getPassword().equals(oldPass);
//					if (!check) request.setAttribute("message", "Cập nhật thất bại ! Vui lòng thực hiện lại.");
//				} else {
//					request.setAttribute("message", "Mật khẩu không đúng ! Vui lòng thực hiện lại.");
//				}
//			}
//			if(request.getAttribute("message")==null) {
//				request.setAttribute("message", "Chúc mừng bạn đã cập nhật thành công.");
//			}
			request.getRequestDispatcher("/templates/usermanagement.jsp").forward(request, response);
		//}

	}

}
