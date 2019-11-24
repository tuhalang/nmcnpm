package com.nmcnpm.web.controller.web;

import com.nmcnpm.web.dao.IProductDAO;
import com.nmcnpm.web.dto.OrderDto;
import com.nmcnpm.web.dto.ProductDto;
import com.nmcnpm.web.model.Customer;
import com.nmcnpm.web.service.ICustomerService;
import com.nmcnpm.web.service.IProductService;
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

public class ConfirmAddressController  extends HttpServlet {
    @Inject
    ICustomerService customerService;
    @Inject
    IProductService productService;
    SessionUtils sessionUtils = new SessionUtils();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Customer customer = new Customer();
        customer.setCustomerID(1L);
        customer = customerService.findByID(customer);
        List<OrderDto> orderDtos = new ArrayList<>();
        OrderDto orderDto = new OrderDto();
        orderDto.setQuantity(7L);
        orderDto.setProduct(productService.findById(29L));
        orderDtos.add(orderDto);
        orderDto = new OrderDto();
        orderDto.setQuantity(6L);
        orderDto.setProduct(productService.findById(31L));
        orderDtos.add(orderDto);
        System.out.println(orderDtos);

        sessionUtils.putValue(request, "orderDtos", orderDtos);
        sessionUtils.putValue(request, "customer", customer);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/templates/order-2.jsp");
        requestDispatcher.forward(request, response);
    }
}
