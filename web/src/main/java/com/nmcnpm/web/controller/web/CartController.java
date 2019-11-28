package com.nmcnpm.web.controller.web;

import com.nmcnpm.web.model.ShoppingItems;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

//@WebServlet(name = "CartController")
public class CartController extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        ShoppingItems cart = (ShoppingItems) session.getAttribute("cart");
        request.setAttribute("cart",cart);
        request.getRequestDispatcher("/templates/cart.jsp").forward(request, response);
    }
}
