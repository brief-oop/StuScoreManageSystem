package com.sundan.ks.interceptor;

import com.sundan.ks.bean.User;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Interceptor implements HandlerInterceptor{
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler, HttpSession session) throws Exception {
        User user =(User) session.getAttribute("User_Login");
        if (user==null){
            request.setAttribute("msg","请先登录！");
            request.getRequestDispatcher("/login.jsp").forward(request,response);

            return false;
        }

        return true;
    }
}
