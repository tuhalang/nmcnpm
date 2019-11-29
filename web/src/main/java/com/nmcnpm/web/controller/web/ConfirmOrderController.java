package com.nmcnpm.web.controller.web;

import com.nmcnpm.web.dao.IOrderedProductDAO;
import com.nmcnpm.web.dto.OrderDto;
import com.nmcnpm.web.model.Customer;
import com.nmcnpm.web.model.OrderedProduct;
import com.nmcnpm.web.service.ICustomerOrderService;
import com.nmcnpm.web.service.ICustomerService;
import com.nmcnpm.web.service.IOrderProductService;
import com.nmcnpm.web.service.IProductService;
import com.nmcnpm.web.utils.CookieUtils;
import com.nmcnpm.web.utils.SessionUtils;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ConfirmOrderController extends HttpServlet {
    @Inject
    IOrderProductService orderProductService;
    @Inject
    ICustomerOrderService customerOrderService;
    @Inject
    IProductService productService;

    CookieUtils cookieUtils = new CookieUtils();
    SessionUtils sessionUtils = new SessionUtils();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        cookieUtils.newCookie(response,"29", "7");


        OrderDto orderDto = new OrderDto();
        Map<String, String> card = cookieUtils.getAllValues(request);
        List<OrderedProduct> orderedProducts = new ArrayList<>();

        for (Map.Entry<String, String> entry : card.entrySet()) {
            System.out.println(entry.getKey() + " " + entry.getValue());

        }

//        for (Map.Entry<String, String> entry : card.entrySet()) {
//            Long id = Long.parseLong(entry.getKey());
//            Long quantity = Long.parseLong(entry.getValue());
//            System.out.println(id + " " + quantity);
//            OrderedProduct orderProduct = new OrderedProduct();
//            orderProduct.setQuantity(quantity);
//            orderProduct.setProduct(productService.findById(id));
//            orderedProducts.add(orderProduct);
//        }

        orderDto.setListOfdata(orderedProducts);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/templates/order-3.jsp");
        requestDispatcher.forward(request, response);




//        request.setAttribute( "orderDto", orderDto);
//        Customer customer = (Customer) sessionUtils.getValue(request, "customer");
//        List<OrderDto> orderDtos = (List<OrderDto>) sessionUtils.getValue(request, "orderDtos");
//
//        Long id = customerOrderService.save(orderDtos, customer);
//        if (id > -1){
//            orderProductService.save(id, orderDtos);
//        }
    }
}
