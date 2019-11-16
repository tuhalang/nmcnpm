package com.nmcnpm.web.controller.admin;

import com.nmcnpm.web.dto.ProductDto;
import com.nmcnpm.web.service.IProductService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.inject.Inject;

public class ProductController extends HttpServlet {
    
    @Inject
    private IProductService productService;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int currentPage = 1;
        int elePerPage = 12;
        try{
            currentPage = Integer.parseInt(request.getParameter("currentPage"));
            elePerPage = Integer.parseInt(request.getParameter("elePerPage"));
        }catch(Exception x){
            
        }
        ProductDto productDto = productService.find(currentPage, elePerPage);
        
        request.setAttribute("productDto", productDto);
        request.getRequestDispatcher("/WEB-INF/admin_theme/products.jsp").forward(request,response);
    }
}
