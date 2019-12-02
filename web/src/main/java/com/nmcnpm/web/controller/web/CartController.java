package com.nmcnpm.web.controller.web;

import com.nmcnpm.web.dto.OrderDto;
import com.nmcnpm.web.dto.ResponseDto;
import com.nmcnpm.web.model.OrderedProduct;
import com.nmcnpm.web.model.Product;
import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nmcnpm.web.service.IProductService;
import com.nmcnpm.web.utils.CookieUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CartController extends HttpServlet {

    @Inject
    IProductService productService;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        CookieUtils cookieUtils = CookieUtils.getInstance();
        HashMap<String, String> cart = cookieUtils.getAllValues(request);
        List<OrderedProduct> orders = new ArrayList<>();
        OrderDto orderDto = new OrderDto();
        Long totalMoney = 0l;
        
        for (Map.Entry<String, String> entry : cart.entrySet()) {
            Long id = Long.parseLong(entry.getKey());
            Long quantity = Long.parseLong(entry.getValue());
            OrderedProduct orderProduct = new OrderedProduct();
            orderProduct.setQuantity(quantity);
            orderProduct.setProductID(id);
            Product product = productService.findById(id);
            orderProduct.setProduct(product);
            orders.add(orderProduct);
            totalMoney += product.getPrice() * quantity;
        }
        
        orderDto.setListOfData(orders);
        orderDto.setTotalMoney(totalMoney);
        request.setAttribute("orderDto", orderDto);
        request.getRequestDispatcher("/templates/cart.jsp").forward(request, response);
    }
}
