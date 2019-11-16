package com.nmcnpm.web.controller;

import com.nmcnpm.web.dao.ProductDAO;
import com.nmcnpm.web.model.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author tuhalang
 * @created on 11/6/19
 */

@WebServlet("/home")
public class HomeController extends HttpServlet {

    public HomeController() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        ProductDAO productDAO = new ProductDAO();
        List<Product> products = productDAO.findAll();

        req.setAttribute("products", products);

        RequestDispatcher rd = req.getRequestDispatcher("/templates/home.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
