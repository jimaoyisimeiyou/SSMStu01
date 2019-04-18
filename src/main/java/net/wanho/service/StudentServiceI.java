package net.wanho.service;

import com.github.pagehelper.PageInfo;
import net.wanho.pojo.Student;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2019/4/18.
 */


public interface StudentServiceI {

    List<Student> getAllStus();
    Student getStuById(Integer id);

    void updateStu(Student student);
    void addStu(Student student);
    void delStu(Integer id);

    PageInfo<Student> getPageAllStus(Integer pageNum);



}
