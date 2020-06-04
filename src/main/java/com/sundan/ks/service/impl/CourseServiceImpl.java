package com.sundan.ks.service.impl;

import com.sundan.ks.bean.Course;
import com.sundan.ks.mapper.CourseMapper;
import com.sundan.ks.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourseServiceImpl implements CourseService {

    @Autowired
    private CourseMapper mapper;

    public List<Course> getListCourse(String class_) {
        return mapper.getListCourse(class_);
    }

    public List<Course> getAdCourse() {
        return mapper.getAdCourse();
    }

    public Course getCourse(Integer id) {
        return mapper.getCourse(id);
    }

    public int saveCourse(Course course) {
        return mapper.saveCourse(course);
    }

    public int deleteCourse(Integer id) {
        return mapper.deleteCourse(id);
    }

    public int editCourse(Course course,Integer id) {
        return mapper.editCourse(course,id);
    }
}
