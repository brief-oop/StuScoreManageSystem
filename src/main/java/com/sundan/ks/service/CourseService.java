package com.sundan.ks.service;

import com.sundan.ks.bean.Course;

import java.util.List;

public interface CourseService {
    List<Course> getListCourse(String class_);
    List<Course> getAdCourse();
    Course getCourse(Integer id);
    int saveCourse(Course course);
    int deleteCourse(Integer id);
    int editCourse(Course course,Integer id);
}
