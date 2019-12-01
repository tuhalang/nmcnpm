package com.nmcnpm.web.controller.web;

import com.nmcnpm.web.dto.ProductDto;
import com.nmcnpm.web.model.Category;
import com.nmcnpm.web.model.Product;
import com.nmcnpm.web.service.ICategoryService;
import com.nmcnpm.web.service.IProductService;
import com.nmcnpm.web.utils.CookieUtils;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.servlet.http.Cookie;


public class HomeController extends HttpServlet {

    @Inject
    IProductService productService;
    @Inject
    ICategoryService categoryService;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int page=1;
        int recordsPerPage=12;
        int categoryId=0;
        if (request.getParameter("page")!=null) {
            page = Integer.parseInt(request.getParameter("page"));
        }
        if (request.getParameter("categoryId")!=null)
            categoryId=Integer.parseInt(request.getParameter("categoryId"));

        else categoryId=0;
        if (categoryId!=0) {
            ProductDto productDto = productService.findByCategoryID(categoryId, page, recordsPerPage);
            request.setAttribute("productDto", productDto);
            request.setAttribute("category", categoryService.findById(categoryId));
        }
        else {
            ProductDto productDto = productService.find(page,recordsPerPage);
            request.setAttribute("productDto", productDto);
            Category category=new Category(0L,"All product","",0L);
            request.setAttribute("category",category);
        }

        request.getRequestDispatcher("/templates/home.jsp").forward(request,response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
