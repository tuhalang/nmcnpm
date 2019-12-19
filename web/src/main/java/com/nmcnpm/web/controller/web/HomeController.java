package com.nmcnpm.web.controller.web;

import com.nmcnpm.web.dto.ProductDto;
import com.nmcnpm.web.model.Category;
import com.nmcnpm.web.model.Product;
import com.nmcnpm.web.service.ICategoryService;
import com.nmcnpm.web.service.IProductService;
import com.nmcnpm.web.utils.CookieUtils;
import com.nmcnpm.web.utils.SessionUtils;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.Cookie;


public class HomeController extends HttpServlet {

    @Inject
    IProductService productService;
    @Inject
    ICategoryService categoryService;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SessionUtils sessionUtils=SessionUtils.getInstance();
        if (sessionUtils.getValue(request,"categories")==null){
            List<Category> categories=categoryService.findAll();
            sessionUtils.putValue(request,"categories",categories);
        }
        int page=1;
        int recordsPerPage=12;
        Long categoryId=0L;
        if (request.getParameter("page")!=null) {
            page = Integer.parseInt(request.getParameter("page"));
        }
        if (request.getParameter("categoryId")!=null)
            categoryId=Long.parseLong(request.getParameter("categoryId"));

        else categoryId=0L;
        if (categoryId!=0) {
            ProductDto productDto = productService.findByCategoryID(categoryId, page, recordsPerPage);
            request.setAttribute("productDto", productDto);
            request.setAttribute("category", categoryService.findById(categoryId));
        }
        else {
            ProductDto productDto = productService.find(page,recordsPerPage);
            request.setAttribute("productDto", productDto);
            Category category=new Category(0L,"Tất cả sản phẩm","",0L);
            request.setAttribute("category",category);
        }

        request.getRequestDispatcher("/templates/home.jsp").forward(request,response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
