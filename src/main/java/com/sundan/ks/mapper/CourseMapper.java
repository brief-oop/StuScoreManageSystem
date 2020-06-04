package com.sundan.ks.mapper;

import com.sundan.ks.bean.Course;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CourseMapper {
    List<Course> getListCourse(String class_);
    List<Course> getAdCourse();
    Course getCourse(Integer id);
    int saveCourse(Course course);
    int deleteCourse(Integer id);
    int editCourse(@Param("course") Course course,@Param("id_") Integer id_);
}
