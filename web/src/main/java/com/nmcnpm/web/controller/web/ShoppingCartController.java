package com.nmcnpm.web.controller.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nmcnpm.web.dao.impl.CustomerOrderDAO;
import com.nmcnpm.web.dao.impl.ProductDAO;
import com.nmcnpm.web.model.CustomerOrder;
import com.nmcnpm.web.model.ItemCart;
import com.nmcnpm.web.model.Product;
import com.nmcnpm.web.model.ShoppingItems;
import com.nmcnpm.web.service.IProductService;


public class ShoppingCartController extends HttpServlet {

    @Inject
    IProductService productService;
    private static final long serialVersionUID = 1L;
    private boolean check=false;
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String action="view";
        Long productID=1L;
        String quantity="";
        ShoppingItems cart = (ShoppingItems) session.getAttribute("cart");

        if (request.getParameter("quantity")!=null) quantity=request.getParameter("quantity").toString();
        if (request.getParameter("productID")!=null) productID=Long.parseLong(request.getParameter("productID"));
        if (request.getParameter("action")!=null) action=request.getParameter("action").toString();

        if (action.equals("view")) {
        } else if (action.equals("add")) {
            if (cart == null) {
                cart = new ShoppingItems();
            }
            try {
                Product product = productService.findById(productID);
                cart.addItem(product,Long.parseLong(quantity));
                cart.calculateAmount();
                session.setAttribute("cart", cart);
            } catch (Exception e) {
                check=false;
                e.printStackTrace();
            }
            check=true;
        } else if (action.equals("update")) {
            cart.update(productID, quantity);
            cart.calculateAmount();
            session.setAttribute("cart", cart);
            check=true;
        } else if (action.equals("remove")) {
            cart.remove(productID);
            session.setAttribute("cart", cart);
            check=true;
        }
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        if (check){
            response.getWriter().print("1");
        }
        else response.getWriter().print("0");
    }
}
