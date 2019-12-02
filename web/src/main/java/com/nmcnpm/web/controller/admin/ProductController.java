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
        Long productId = -1l;
        Long producDetailtId = -1l;

        try {
            productId = Long.parseLong(request.getParameter("productId"));
            producDetailtId = Long.parseLong(request.getParameter("productDetailId"));
        } catch (Exception e) {

        }

        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String descriptionDetail = request.getParameter("description_detail");
        String image = request.getParameter("image");
        Long price = Long.parseLong(request.getParameter("price"));
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
        if (productId != -1 && producDetailtId != -1) {
            product.setProductID(productId);
            product.setStatus(true);
            productDetail.setProductDetailID(producDetailtId);
            if (productService.isExist(product.getProductID()) && productDetailService.isExist(productDetail.getProductDetailID())
                    && productService.valid(product) && productDetailService.valid(productDetail)) {
                productDetailService.update(productDetail);
                product.setProductDetailID(productDetail.getProductDetailID());
                productService.update(product);

                String contextPath = request.getContextPath();
                response.sendRedirect(contextPath+"/admin/product?productId="+productId);
            }
        } else {
            
            if (productService.valid(product) && productDetailService.valid(productDetail)) {
                productDetailService.save(productDetail);
                product.setProductDetailID(productDetail.getProductDetailID());
                productService.save(product);
            }
            
            doGet(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if (request.getParameter("productId") != null) {
            Long productId = Long.parseLong(request.getParameter("productId"));

            ProductDto productDto = new ProductDto();
            productService.findById(productId, productDto);

            request.setAttribute("product", productDto);
            request.getRequestDispatcher("/WEB-INF/admin_theme/product_detail.jsp").forward(request, response);
        } else {
            int currentPage = 1;
            int elePerPage = 6;
            try {
                currentPage = Integer.parseInt(request.getParameter("currentPage"));
                elePerPage = Integer.parseInt(request.getParameter("elePerPage"));
            } catch (Exception x) {

            }
            ProductDto productDto = new ProductDto();
            productService.find(currentPage, elePerPage, productDto);

            request.setAttribute("productDto", productDto);
            request.getRequestDispatcher("/WEB-INF/admin_theme/products.jsp").forward(request, response);
        }
    }

}
