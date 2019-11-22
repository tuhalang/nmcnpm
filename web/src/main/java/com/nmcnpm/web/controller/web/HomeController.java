package com.nmcnpm.web.controller.web;

import com.nmcnpm.web.dto.ProductDto;
import com.nmcnpm.web.model.Product;
import com.nmcnpm.web.service.ICategoryService;
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
    IProductService productService;
    @Inject
    ICategoryService categoryService;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int page=1;
        int recordsPerPage=12;
        int categoryId=1;
        if (request.getParameter("page")!=null) {
            page = Integer.parseInt(request.getParameter("page"));
        }
        if (request.getParameter("categoryId")!=null)
            categoryId=Integer.parseInt(request.getParameter("categoryId"));
        else categoryId=1;
        ProductDto productDto=productService.findByCategoryID(categoryId,page,recordsPerPage);
        request.setAttribute("productDto", productDto);
        request.setAttribute("category",categoryService.findById(categoryId));
        request.getRequestDispatcher("/templates/home.jsp").forward(request,response);
    }
}
