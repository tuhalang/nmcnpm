package com.nmcnpm.web.controller;

import com.nmcnpm.web.dto.ProductDto;
import com.nmcnpm.web.model.Product;
import com.nmcnpm.web.service.IProductService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

//
//@WebServlet(name = "/")
public class HomeController extends HttpServlet {

    @Inject
    IProductService productService;

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
        List<Product> p=productDto.getListOfdata();
        request.setAttribute("lit",p);
        request.getRequestDispatcher("/templates/home.jsp").forward(request,response);
    }
}
