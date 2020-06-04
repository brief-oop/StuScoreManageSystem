package com.sundan.ks.controller;

import com.sundan.ks.bean.Info;
import com.sundan.ks.bean.User;
import com.sundan.ks.service.InfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/page")
public class InfoController {

    @Autowired
    private InfoService service;

    @RequestMapping("/getinfo")
    public String getInfo(Model model, HttpSession session){
        User user =(User) session.getAttribute("User_Login");
        Info info = service.getInfo(user.getId());
        model.addAttribute("info",info);
        return "forward:/page/getStuInfo.do";
    }

    @RequestMapping("/updateInfo")
    public String updateInfo(Integer id,Integer age,String sex,String nation,String phone){
        Info info = new Info();
        info.setId(id);
        info.setAge(age);
        info.setSex(sex);
        info.setNation(nation);
        info.setPhone(phone);

        service.updateInfo(info);
        return "redirect:/page/getinfo.do";
    }

    @RequestMapping("/getStuInfo")
    public String getManager(Model model, HttpSession session){
        User user =(User) session.getAttribute("User_Login");
        if (user.getIdentity().equals("teacher")){
            model.addAttribute("th","教师号");
        }else{
            model.addAttribute("th","学号");
        }
        return "forward:userCenter.jsp";
    }

    @RequestMapping("/getListInfo_S")
    public String getListInfo_S(Model model){
        List<Info> info = service.getListInfo("student");
        model.addAttribute("infos",info);
        return "forward:/page/getStuUser.do";
    }

    @RequestMapping("/getListInfo_T")
    public String getListInfo_T(Model model){
        List<Info> info = service.getListInfo("teacher");
        model.addAttribute("infos",info);
        return "forward:/page/getTeaUser.do";
    }

    @RequestMapping("/manaInfo")
    public String manaInfo(Integer id,Integer age,String sex,String nation,String phone,Integer id_,String identity_s){
        Info info = new Info();
        info.setId(id);
        info.setAge(age);
        info.setSex(sex);
        info.setNation(nation);
        info.setPhone(phone);

        service.manaInfo(info,id_);
        if (identity_s.equals("student")){
            return "forward:/page/getListInfo_S.do";
        } else {
            return "forward:/page/getListInfo_T.do";
        }
    }
}
