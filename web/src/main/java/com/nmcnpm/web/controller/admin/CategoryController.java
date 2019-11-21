package com.nmcnpm.web.controller.admin;

import com.nmcnpm.web.dto.CategoryDto;
import com.nmcnpm.web.model.Category;
import com.nmcnpm.web.service.ICategoryService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.inject.Inject;

public class CategoryController extends HttpServlet {
    
    @Inject
    private ICategoryService categoryService;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name =  request.getParameter("name");
        String image = request.getParameter("image");
        Category category = new Category();
        category.setName(name);
        category.setImage(image);
        //categoryService.
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
        CategoryDto categoryDto = categoryService.find(currentPage, elePerPage);
        
        request.setAttribute("categoryDto",categoryDto);
        request.getRequestDispatcher("/WEB-INF/admin_theme/category.jsp").forward(request,response);
    }
}
