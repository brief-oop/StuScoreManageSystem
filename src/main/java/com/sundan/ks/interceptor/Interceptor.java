package com.sundan.ks.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Interceptor implements HandlerInterceptor{
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        Object user = request.getSession().getAttribute("User_Login");
        if (user==null){
            request.getSession().setAttribute("Login_Info","请先登录！");
            response.sendRedirect("/login.jsp");
            return false;
        }

        return true;
    }
}
