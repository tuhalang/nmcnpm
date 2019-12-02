package com.nmcnpm.web.controller.web;

import com.nmcnpm.web.model.Product;
import com.nmcnpm.web.model.ProductDetail;
import com.nmcnpm.web.service.IProductDetailService;
import com.nmcnpm.web.service.IProductService;

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
    @Inject
    IProductService productService;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long productID=1L;
        if (request.getParameter("productID")!=null) productID=Long.parseLong(request.getParameter("productID"));
        Product product=productService.findById(productID);
        ProductDetail productDetail = productDetailService.findById(product.getProductDetailID());
        request.setAttribute("productDetail",productDetail);
        request.setAttribute("product",product);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/templates/product-detail.jsp");
        requestDispatcher.forward(request, response);
    }
}
