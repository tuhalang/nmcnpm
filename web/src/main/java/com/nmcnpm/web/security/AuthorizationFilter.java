package com.nmcnpm.web.security;

import com.nmcnpm.web.model.Account;
import com.nmcnpm.web.model.Role;
import com.nmcnpm.web.model.RoleName;
import com.nmcnpm.web.utils.SessionUtils;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AuthorizationFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        request.setCharacterEncoding("UTF-8");

        String url = request.getRequestURI();
        String contextPath = request.getContextPath();

        if(url.startsWith(contextPath+"/admin")){
            Boolean isLogin = (Boolean) SessionUtils.getInstance().getValue(request, "IS_LOGIN");
            Account account = (Account) SessionUtils.getInstance().getValue(request, "USER");

            if(isLogin != null && account != null){
                Role role = account.getRoles().get(0);
                if(role.getRoleName().equals(RoleName.ROLE_ADMIN)){
                    filterChain.doFilter(servletRequest, servletResponse);
                }else {
                    response.sendRedirect(contextPath+"/templates/accessdenied.jsp");
                }
            }else {
                response.sendRedirect(contextPath+"/templates/accessdenied.jsp");
            }
        } else if(url.startsWith(contextPath+"/user")){
            Boolean isLogin = (Boolean) SessionUtils.getInstance().getValue(request, "IS_LOGIN");
            Account account = (Account) SessionUtils.getInstance().getValue(request, "USER");

            if(isLogin != null && account != null){
                Role role = account.getRoles().get(0);
                if(role.getRoleName().equals(RoleName.ROLE_USER) || role.getRoleName().equals(RoleName.ROLE_ADMIN)){
                    filterChain.doFilter(servletRequest, servletResponse);
                }else {
                    response.sendRedirect(contextPath+"/templates/accessdenied.jsp");
                }
            }else {
                response.sendRedirect(contextPath+"/templates/accessdenied.jsp");
            }
        } else {
            filterChain.doFilter(servletRequest, servletResponse);
        }
    }

    @Override
    public void destroy() {

    }
}
