package net.wanho.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import net.wanho.mapper.StudentMapper;
import net.wanho.pojo.Student;
import net.wanho.service.StudentServiceI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2019/4/18.
 */
@Service
public class StudentServiceImpl implements StudentServiceI {

    @Autowired
    private StudentMapper studentMapper;

    @Override
    public List<Student> getAllStus() {
        return studentMapper.getAllStus();
    }

    @Override
    public Student getStuById(Integer id) {
        return studentMapper.getStuById(id);
    }

    @Override
    public void updateStu(Student student) {
        studentMapper.updateStu(student);
    }

    @Override
    public void addStu(Student student) {
        studentMapper.addStu(student);
    }

    @Override
    public void delStu(Integer id) {
        studentMapper.delStu(id);
    }

    @Override
    public PageInfo<Student> getPageAllStus(Integer pageNum) {

        PageHelper.startPage(pageNum, 5);
        List<Student> students  = studentMapper.getAllStus();
        PageInfo<Student> studentPageInfo = new PageInfo<Student>(students);


        return studentPageInfo;
    }


}
