package com.nmcnpm.web.security;

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

        String url = request.getRequestURI();
        String contextPath = request.getContextPath();
        System.out.println(url);

        if(url.startsWith(contextPath+"/admin")){
            filterChain.doFilter(servletRequest, servletResponse);
            //response.sendRedirect(contextPath+"/templates/accessdenied.jsp");
        } else if(url.startsWith(contextPath+"/user")){
            filterChain.doFilter(servletRequest, servletResponse);
            //response.sendRedirect(contextPath+"/templates/accessdenied.jsp");
        } else {
            filterChain.doFilter(servletRequest, servletResponse);
        }
    }

    @Override
    public void destroy() {

    }
}
