package com.nmcnpm.web.controller.web;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URLDecoder;
import java.util.Base64;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nmcnpm.mail.MailSMTP;
import com.nmcnpm.mail.MailSystem;
import com.nmcnpm.web.dao.impl.AccountDAO;
import com.nmcnpm.web.dao.impl.CustomerDAO;
import com.nmcnpm.web.model.Account;
import com.nmcnpm.web.model.Customer;
import com.nmcnpm.web.service.IAccountService;
import com.nmcnpm.web.service.ICustomerService;

/**
 * Servlet implementation class AccountManagment
 */
//@WebServlet({ "/AccountInfo", "/UpdateInfo" })
public class AccountManagmentController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Inject
    ICustomerService customerService;
    @Inject
    IAccountService accountService;


    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("USER");
        Customer customer = customerService.findByAccountId(account.getAccountID());
        request.setAttribute("customer", customer);
        request.getRequestDispatcher("/templates/usermanagement.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Account user = (Account) session.getAttribute("USER");
        Account account = new Account();
        Customer customer = new Customer();
        resp.setContentType("text/html");
        BufferedReader rd = new BufferedReader(new InputStreamReader(req.getInputStream(), "UTF-8"));
        String line = rd.readLine();
        String decode = URLDecoder.decode(decodeString(line.split("=")[1]),"UTF-8");
        String[] list = decode.split("&");
        account.setPassword(list[0].split("=")[1]);
        customer.setPhone(list[1].split("=")[1]);
        customer.setEmail(list[2].split("=")[1]);
        customer.setAddress(list[3].split("=")[1]);
        customer.setName(list[4].split("=")[1]);
        String new_password = list[5].split("=")[1];
        if (accountService.comparePassword(user.getUsername(),account.getPassword())) {
            account.setAccountID(user.getAccountID());
            account.setPassword(new_password);
            account.setUsername(user.getUsername());
            if (accountService.valid(account)) {
                if (customerService.valid(customer)) {
                    accountService.update(account);
                    customer.setAccountID(account.getAccountID());
                    customerService.updateByAccountId(customer);
                    MailSMTP mail = new MailSMTP("tuhalang007@gmail.com", customer.getEmail(), "Cảm ơn bạn đã đăng kí tài khoản!", "ĐĂNG KÍ TÀI KHOẢN THÀNH CÔNG !");
                    MailSystem.execute(mail);
                    resp.getWriter().print("1");
                } else {
                    resp.getWriter().print("customer is not valid!");
                }

            } else {
                resp.getWriter().print("2");
            }
        }else {
            resp.getWriter().print("2");
        }
        resp.getWriter().flush();
    }

    public String decodeString(String encodedString) {
        encodedString = encodedString.replaceAll("%3D", "=");
        encodedString = encodedString.replaceAll("%2B", "+");
        encodedString = encodedString.replaceAll("%2F", "/");
        byte[] bytes = Base64.getDecoder().decode(encodedString);
        return new String(bytes);
    }
}
