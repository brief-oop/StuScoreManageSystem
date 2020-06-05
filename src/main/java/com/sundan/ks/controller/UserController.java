package com.sundan.ks.controller;

import com.sundan.ks.bean.User;
import com.sundan.ks.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserService service;

    @RequestMapping("/login")
    public String login(String username, String password, HttpSession session, HttpServletRequest request){
        User user1 = new User();
        user1.setUsername(username);
        user1.setPassword(password);

        User user = service.Login(user1);
        if (user!=null) {
            if(user.getIdentity().equals("student")){
                session.setAttribute("User_Login", user);
                return "redirect:/page/list.do";
            }else{
                session.setAttribute("User_Login", user);
                return "redirect:/page/th_list.do";
            }
        }else {
            session.setAttribute("Login_Info","账户名或密码错误！");
            return "forward:login.jsp";
        }
    }

    @RequestMapping("/regist")
    public String regist(String username, String password,String surepassword,Model model){
        if (password.equals(surepassword)){
            User user = new User();
            user.setUsername(username);
            user.setPassword(password);

            service.saveUser(user);
            Integer id = user.getId();
            service.saveS_U(id);
            model.addAttribute("msg","注册成功，请登录！");
            return "forward:login.jsp";
        }else {
            model.addAttribute("msg","请确认密码是否一致！");
            return "forward:page/register.jsp";
        }
    }
    @RequestMapping("/page/editUser")
    public String editUser(Integer id,String password,String surepassword,Model model,HttpSession session){
        if (password.equals(surepassword)){
            User user = new User();
            user.setId(id);
            user.setPassword(password);

            service.updateUser(user);
            User user1 =(User) session.getAttribute("User_Login");
            user1.setPassword(password);
            session.setAttribute("User_Login",user1);
        }else {
            model.addAttribute("msg","请确认密码是否一致！");
        }
        return "forward:/page/getinfo.do";
    }
    @RequestMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:login.jsp";
    }

    @RequestMapping("/page/getStuUser")
    public String getStuUser(Model model){
        List<User> student = service.getItem("student");
        model.addAttribute("stus",student);
        model.addAttribute("iden","student");
        return "forward:adminCenter.jsp";
    }

    @RequestMapping("/page/getTeaUser")
    public String getTeaUser(Model model){
        List<User> teacher = service.getItem("teacher");
        model.addAttribute("teas",teacher);
        model.addAttribute("iden","teacher");
        return "forward:adminCenter2.jsp";
    }

    @RequestMapping("/page/dlStu")
    public String dlStu(Integer id){
        service.deleteUser(id);
        return "forward:/page/dlStu.do";
    }

    @RequestMapping("/page/updateUser")
    public String editCourse(Integer id,String username,String password,String identity,String class_,Integer id_,String identity_s){
        User user = new User();
        user.setId(id);
        user.setUsername(username);
        user.setPassword(password);
        user.setIdentity(identity);
        user.setClass_(class_);
        service.editUser(user,id_);

        if (identity_s.equals("student")){
            return "forward:/page/getListInfo_S.do";
        } else {
            return "forward:/page/getListInfo_T.do";
        }
    }

    @RequestMapping("/page/addUser")
    public String addUser(Integer id,String username,String password,String identity,String class_){
        User user = new User();
        user.setId(id);
        user.setUsername(username);
        user.setPassword(password);
        user.setIdentity(identity);
        user.setClass_(class_);
        service.addUser(user);
        if (identity.equals("student")){
            service.addUser_S(id);
        }
        return "addUser";
    }

}
