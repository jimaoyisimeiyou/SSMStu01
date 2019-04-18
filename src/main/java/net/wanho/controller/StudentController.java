package net.wanho.controller;

import com.github.pagehelper.PageInfo;
import net.wanho.pojo.JsonResult;
import net.wanho.pojo.Student;
import net.wanho.service.StudentServiceI;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2019/4/18.
 */
@Controller
public class StudentController {


    @Autowired
    private StudentServiceI studentServiceI;


    @RequestMapping("getAllStus")
    @ResponseBody
    public JsonResult getAllStus(){
        List<Student> allStus = studentServiceI.getAllStus();
        JsonResult jsonResult = new JsonResult(200,"msg",allStus);
        System.out.println(jsonResult);
        return jsonResult;
    }
/*

    @RequestMapping("updateStu")
    public String updateStu(){
        Student student = new Student(1021,"xxxx","666");
        studentServiceI.updateStu(student);
        return "redirect:/getAllStus";
    }

    @RequestMapping("addStu")
    public String addStu(){
        Student student = new Student(null,"xxxx","666");
        studentServiceI.addStu(student);
        return "redirect:/getAllStus";
    }

    @RequestMapping("delStu")
    public String delStu(){

        studentServiceI.delStu(1034);
        return "redirect:/getAllStus";
    }
*/


    @RequestMapping("toGetAllStus")

    public String toGetAllStus(Map map){

        List<Student> allStus = studentServiceI.getAllStus();
        map.put("stus", allStus);

        return "index";

    }

    @RequestMapping("toUpdateStu")
    public String toUpdateStu(Integer id,Map map){
        Student student = studentServiceI.getStuById(id);

        map.put("stu", student);

        return "update";

    }

    @RequestMapping("toAddStu")
    public String toAddStu(Student student,Map map){


        map.put("stu", student);

        return "new";

    }

    @RequestMapping("updateStu")
    public String updateStu(Student student){

        studentServiceI.updateStu(student);
        return "redirect:/getPageAllStus";
    }

    @RequestMapping("addStu")
    public String addStu(Student student){


        studentServiceI.addStu(student);
        return "redirect:/getPageAllStus";
    }

    @RequestMapping("delStu")
    public String delStu(int id){

        studentServiceI.delStu(id);
        return "redirect:/getPageAllStus";
    }



    @RequestMapping("getPageAllStus")
    public String getPageAllStus(@RequestParam(value = "pageNum",defaultValue = "1") Integer pageNum, Map map){

        PageInfo<Student> pageAllStus = studentServiceI.getPageAllStus(pageNum);
        map.put("pageAllStus", pageAllStus);

        return "list";
    }


}
