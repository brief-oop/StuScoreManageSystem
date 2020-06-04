package com.sundan.ks.controller;

import com.sundan.ks.bean.Course;
import com.sundan.ks.bean.User;
import com.sundan.ks.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.text.DecimalFormat;
import java.util.List;

@Controller
@RequestMapping("/page")
public class CourseController {

    @Autowired
    private CourseService service;

    @RequestMapping("/list")
    public String getList(Model model, HttpSession session){
        User user =(User) session.getAttribute("User_Login");
        int[] arr=new int[3];
        int Fail=0;
        float Average=0;

        Course course = service.getCourse(user.getId());
        arr[0]=course.getMath();
        arr[1]=course.getEnglish();
        arr[2]=course.getComputer();
        for (int i : arr) {
            if (i<60){
                Fail++;
            }
            Average+=i;
        }
        Average/=3;
        DecimalFormat ft = new DecimalFormat("#.00");
        model.addAttribute("grades",course);
        model.addAttribute("fails",Fail);
        model.addAttribute("average",ft.format(Average));

        return "forward:main.jsp";
    }

    @RequestMapping("/th_list")
    public String thList(Model model,HttpSession session){
        int Num=0;
        int Qualified;
        int Fail=0;
        float Average,sum=0;
        List<Course> list;
        User user =(User) session.getAttribute("User_Login");
        if (user.getIdentity().equals("admin")){
            list = service.getAdCourse();
        }else {
            list = service.getListCourse(user.getClass_());
        }

        Num=list.size();
        for (Course course : list) {
            int[] arr =new int[3];
            arr[0]=course.getMath();arr[1]=course.getEnglish();arr[2]=course.getComputer();
            for (int i : arr) {
                if (i<60){
                    Fail++;
                    break;
                }
            }
            for (int i : arr) {
                sum+=i;
            }
        }
        Qualified=Num-Fail;
        Average=sum/3/Num;

        DecimalFormat ft = new DecimalFormat("#.00");
        model.addAttribute("grades",list);
        model.addAttribute("Num",Num);
        model.addAttribute("Qualified",Qualified);
        model.addAttribute("Fail",Fail);
        model.addAttribute("Average",ft.format(Average));
        if (user.getIdentity().equals("admin")){
            return "forward:ad_main.jsp";
        }else {
            return "forward:th_main.jsp";
        }
    }

    @RequestMapping("/saveCourse")
    public String saveCourse(Integer id,String name,Integer math,Integer english,Integer computer){
        Course course = new Course();
        course.setId(id);
        course.setName(name);
        course.setMath(math);
        course.setEnglish(english);
        course.setComputer(computer);

        service.saveCourse(course);
        return "forward:/page/th_list.do";
    }

    @RequestMapping("/deleteCourse")
    public String deleteCourse(Integer id){
        service.deleteCourse(id);
        return "forward:/page/th_list.do";
    }

    @RequestMapping("/editCourse")
    public String editCourse(Integer id_,Integer id,String name,Integer math,Integer english,Integer computer){
        Course course = new Course();
        course.setId(id);
        course.setName(name);
        course.setMath(math);
        course.setEnglish(english);
        course.setComputer(computer);

        service.editCourse(course,id_);
        return "forward:/page/th_list.do";
    }
}
