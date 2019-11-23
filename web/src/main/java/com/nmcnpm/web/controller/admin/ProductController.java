package com.nmcnpm.web.controller.admin;

import com.nmcnpm.web.dto.ProductDto;
import com.nmcnpm.web.model.Product;
import com.nmcnpm.web.model.ProductDetail;
import com.nmcnpm.web.service.IProductDetailService;
import com.nmcnpm.web.service.IProductService;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.inject.Inject;

public class ProductController extends HttpServlet {
    
    @Inject
    private IProductService productService;
    @Inject
    IProductDetailService productDetailService;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //=========================================//
        
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String descriptionDetail = request.getParameter("description_detail");
        String image = request.getParameter("image");
        Float price = Float.parseFloat(request.getParameter("price"));
        Long quantity = Long.parseLong(request.getParameter("quantity"));
        Long categoryId = Long.parseLong(request.getParameter("category"));
        
        Product product = new Product();
        product.setName(name);
        product.setDescription(description);
        product.setDescriptionDetail(descriptionDetail);
        product.setImage(image);
        product.setPrice(price);
        product.setQuantity(quantity);
        product.setCategoryID(categoryId);
        
        //=========================================//
        
        String accessories = request.getParameter("accessories");
        String guarantee = request.getParameter("guarantee");
        String image1 = request.getParameter("image1");
        String image2 = request.getParameter("image2");
        String image3 = request.getParameter("image3");
        String image4 = request.getParameter("image4");
        String image5 = request.getParameter("image5");
        String infomation = request.getParameter("information");
        
        ProductDetail productDetail = new ProductDetail();
        productDetail.setAccessories(accessories);
        productDetail.setGuarantee(guarantee);
        productDetail.setImage1(image1);
        productDetail.setImage2(image2);
        productDetail.setImage3(image3);
        productDetail.setImage4(image4);
        productDetail.setImage5(image5);
        productDetail.setInformation(infomation);
        
        //========================================//
        
        if(productService.valid(product) && productDetailService.valid(productDetail)){
            productDetailService.save(productDetail);
            product.setProductDetailID(productDetail.getProductDetailID());
            productService.save(product);
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
        ProductDto productDto = productService.find(currentPage, elePerPage);
        
        request.setAttribute("productDto", productDto);
        request.getRequestDispatcher("/WEB-INF/admin_theme/products.jsp").forward(request,response);
    }
}
