package cn.controller;

import cn.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class AdminController {
    @Autowired
    private HttpServletRequest request;
    @Autowired
    private AdminService adminService;

    /**
     * 系统管理员登录接口
     * @param username
     * @param password
     * @return
     */
    @RequestMapping("login")
    public String login(String username, String password) {
        Boolean isLogin = this.adminService.login(username, password);
        if (isLogin) {
            return "admin_index";
        } else {
            request.setAttribute("msg", true);
            return "login";
        }
    }

}
