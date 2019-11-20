package com.nmcnpm.web.controller;

import com.nmcnpm.mail.MailSMTP;
import com.nmcnpm.mail.MailSystem;
import com.nmcnpm.web.model.Account;
import com.nmcnpm.web.model.Customer;
import com.nmcnpm.web.service.IAccountService;
import com.nmcnpm.web.service.ICustomerService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author tuhalang
 * @created on 11/16/19
 */
public class SignUpController extends HttpServlet {

    @Inject
    ICustomerService customerService;

    @Inject
    IAccountService accountService;

    public SignUpController() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/templates/signup.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String username = req.getParameter("txtUsername");
        String password = req.getParameter("txtPassword");
        String re_pass = req.getParameter("txtRePass");
        String name = req.getParameter("txtName");
        String phone = req.getParameter("txtPhone");
        String email = req.getParameter("txtEmail");
        String address = req.getParameter("txtAddress");

        if (password.equals(re_pass)) {
            Account account = new Account();
            account.setUsername(username);
            account.setPassword(password);

            Customer customer = new Customer();
            customer.setName(name);
            customer.setEmail(email);
            customer.setPhone(phone);
            customer.setAddress(address);

            if (accountService.valid(account) && !accountService.isExist(account)) {

                if (customerService.valid(customer) && !customerService.isExist(customer)) {
                    accountService.save(account);
                    customerService.save(customer);
                    
                    // TODO 
                    MailSMTP mail = new MailSMTP("tuhalang007@gmail.com", customer.getEmail(), "Cảm ơn bạn đã đăng kí tài khoản!", "ĐĂNG KÍ TÀI KHOẢN THÀNH CÔNG !");
                    MailSystem.execute(mail);

                    req.setAttribute("info", "register is successful! please login!");
                    req.getRequestDispatcher("/templates/signin.jsp").forward(req,resp);
                } else {
                    req.setAttribute("error", "customer is not valid!");
                    System.out.println("customer not valid!");
                }

            } else {
                req.setAttribute("error", "account is not valid!");
                System.out.println("account not valid!");
            }
        } else {
            req.setAttribute("error", "password is not valid!");
            System.out.println("password not valid!");
        }

    }
}
