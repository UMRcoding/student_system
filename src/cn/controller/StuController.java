package cn.controller;

import cn.model.Stu;

import cn.service.StuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 学生控制器
 */
@Controller
public class StuController {
    @Autowired
    private HttpServletRequest request;
    @Autowired
    private StuService stuService;


    @RequestMapping("stutoadd")
    public String toadd() {
        return "stu/add";
    }


    @RequestMapping("stutoupdate")
    public String toupdate(String id) {
        Stu stu = this.stuService.selectByPrimaryKey(id);
        request.setAttribute("v", stu);
        return "stu/update";
    }

    @RequestMapping("stuupdate")
    public String update(Stu stu) {
        this.stuService.update(stu);
        return "redirect:stulist.do";
    }

    @RequestMapping("studel")
    public String del(String id) {
        this.stuService.del(id);
        return "redirect:stulist.do";
    }

    @RequestMapping("stuadd")
    public String add(Stu stu) {
        List<Stu> stus = this.stuService.queryAll();
        if (stus.isEmpty()) {
            String id = "1";
            stu.setId(id);
        } else {
            stu.setId(String.valueOf(stus.size() + 1));
        }
        this.stuService.insert(stu);
        return "redirect:stulist.do";
    }

    @RequestMapping("stulist")
    public String list() {
        List<Stu> list = stuService.queryAll();
        request.setAttribute("list", list);
        return "stu/list";
    }
}
