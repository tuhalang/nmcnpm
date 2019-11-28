package com.nmcnpm.web.controller.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;

import com.nmcnpm.web.dao.impl.CustomerOrderDAO;
import com.nmcnpm.web.dao.impl.ProductDAO;
import com.nmcnpm.web.model.CustomerOrder;
import com.nmcnpm.web.model.ItemCart;
import com.nmcnpm.web.model.Product;
import com.nmcnpm.web.model.ShoppingItems;

/**
 * Servlet implementation class ShoppingCartController
 */

public class ShoppingCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ShoppingCartController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String userPath = request.getServletPath();
		
//		long order_id = (long) session.getAttribute("order_id");
//		CustomerOrderDAO customerOrderDAO = new CustomerOrderDAO();
//		CustomerOrder customerOrder = customerOrderDAO.findByOrderId(order_id);
//		ShoppingItems cart = (ShoppingItems) session.getAttribute("cart");
		if (userPath.equals("/viewCart")) {
			
//			String clear = (String) session.getAttribute("clear");
//			if (!(clear != null && clear.equals("true"))) {
//				ShoppingItems cart = (ShoppingItems) session.getAttribute("cart");
//				cart.clear();
//
//			}
		
			request.getRequestDispatcher("/templates/cart.jsp").forward(request, response);

		} else if (userPath.equals("/addItemCart")) {
			//ShoppingItems cart = (ShoppingItems) session.getAttribute("cart");
			
			if (cart == null) {
				cart = new ShoppingItems();
			}
			try{String productid = request.getParameter("productid");
			ProductDAO dao = new ProductDAO();
			Product product = dao.findById(Long.parseLong(productid));
			cart.addItem(product);
			cart.calculateAmount();
			}catch (Exception e) {
				// TODO: handle exception
			}
			String view=request.getParameter("view");
			System.out.println(view);
			
			session.setAttribute("cart", cart);
			//request.getRequestDispatcher(view).forward(request, response);
		} else if (userPath.equals("/updateItemCart")) {
			ShoppingItems cart = (ShoppingItems) session.getAttribute("cart");
			String productid = request.getParameter("productid");
			String quantity = (String) request.getParameter("quantity");
			System.out.println(quantity);
			System.out.println(productid);
			Long proid = Long.parseLong(productid);
			cart.update(proid, quantity);
			cart.calculateAmount();
			session.setAttribute("cart", cart);
			request.getRequestDispatcher("/templates/cart.jsp").forward(request, response);
		} else if (userPath.equals("/removeItemCart")) {
			ShoppingItems cart = (ShoppingItems) session.getAttribute("cart");
			String productid = request.getParameter("productid");
			cart.remove(Long.parseLong(productid));
			session.setAttribute("cart", cart);
			request.getRequestDispatcher("/templates/cart.jsp").forward(request, response);
		}

	}
}
