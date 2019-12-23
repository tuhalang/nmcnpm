package com.nmcnpm.web.controller.web;

import com.nmcnpm.web.dao.IProductDAO;
import com.nmcnpm.web.dto.OrderDto;
import com.nmcnpm.web.dto.ProductDto;
import com.nmcnpm.web.model.Account;
import com.nmcnpm.web.model.Customer;
import com.nmcnpm.web.model.OrderedProduct;
import com.nmcnpm.web.service.ICustomerService;
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

public class ConfirmAddressController  extends HttpServlet {
    @Inject
    ICustomerService customerService;
    @Inject
    IProductService productService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account account = (Account) SessionUtils.getInstance().getValue(request, "USER");

        /**
         * Sử dụng cookie để lưu trữ giỏ hàng
         * cách sử dụng:
         * +) Lưu thêm vào giỏ hàng: cookieUtils.newCookie(productId, quantity)
         * trong đó productId được coi là tên của cookie còn quantity là giá trị.
         * +) Lấy tất các các mặt hàng trong giỏ: cookieUtils.getAllValues()
         * hàm này sẽ trả về một map tương ứng với <key, value> = <productId, quantity>
         * +) Xóa mặt hàng: cookieUtils.removeCookie()
         * +) cập nhật số lương: cookieUtils.updateData()
         */
        if(account == null){
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/templates/order-1.jsp");
            requestDispatcher.forward(request, response);
        }else {
            Long accountID = account.getAccountID();
            List<Customer> customers = customerService.findByAccountId(accountID);
            request.setAttribute("customers", customers);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/templates/order-2.jsp");
            requestDispatcher.forward(request, response);
        }


    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
