package com.nmcnpm.web.controller.web;

import com.nmcnpm.web.model.ProductDetail;
import com.nmcnpm.web.service.IProductDetailService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ProductDetailController extends HttpServlet {
    @Inject
    IProductDetailService productDetailService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long productDetailID = 1L;
        ProductDetail productDetail = productDetailService.findByID(productDetailID);

        request.setAttribute("productDetail",productDetail);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/templates/order-2.jsp");
        requestDispatcher.forward(request, response);
    }
}
