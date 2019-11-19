package com.nmcnpm.web.controller;

import com.nmcnpm.web.dto.ProductDto;
import com.nmcnpm.web.service.IProductService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
//
//@WebServlet(name = "/")
public class HomeController extends HttpServlet {
    @Inject
    private IProductService productService;
    private int categoryId;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int page=1,recordsPerPage=12;
        if (request.getParameter("page")!=null) {
            page = Integer.parseInt(request.getParameter("page"));
        }
        if (request.getParameter("categoryId")!=null)
            categoryId=Integer.parseInt(request.getParameter("categoryId"));
        ProductDto productDto=productService.findByCategoryID(categoryId,page,recordsPerPage);
        request.setAttribute("productDto", productDto);
        request.getRequestDispatcher("/templates/home.jsp").forward(request,response);
    }
}
