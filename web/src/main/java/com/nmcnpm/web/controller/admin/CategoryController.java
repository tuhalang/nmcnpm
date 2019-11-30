package com.nmcnpm.web.controller.admin;

import com.nmcnpm.web.dto.CategoryDto;
import com.nmcnpm.web.model.Category;
import com.nmcnpm.web.service.ICategoryService;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.inject.Inject;

public class CategoryController extends HttpServlet {
    
    @Inject
    ICategoryService categoryService;
    
    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getParameter("categoryId")!=null){
            Long categoryId = Long.parseLong(request.getParameter("categoryId"));
            String name = request.getParameter("name");
            String image = request.getParameter("image");
            Category category = new Category();
            category.setCategoryID(categoryId);
            category.setName(name);
            category.setImage(image);
            if(categoryService.isExist(categoryId) && categoryService.valid(category)){
                categoryService.update(category);
            }
        }else{
            String name = request.getParameter("name");
            String image = request.getParameter("image");
            Category category = new Category();
            category.setName(name);
            category.setImage(image);
            if(categoryService.valid(category)){
                categoryService.save(category);
            }
        }
        doGet(request, response);
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
