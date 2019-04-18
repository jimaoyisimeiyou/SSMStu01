package net.wanho.mapper;

import net.wanho.pojo.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Administrator on 2019/4/18.
 */
public interface StudentMapper {


    List<Student> getAllStus();

    Student getStuById(Integer id);
    void updateStu(Student student);
    void addStu(Student student);
    void delStu(@Param("id") Integer id);



}
