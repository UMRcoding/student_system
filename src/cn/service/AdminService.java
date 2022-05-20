package cn.service;

import cn.dao.AdminMapper;
import cn.model.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class AdminService {
    @Autowired
    private AdminMapper adminMapper;

    public Boolean login(String username, String password) {
        List<Admin> list = adminMapper.queryAll();
        if (list.isEmpty()) {
            return false;
        }
        list = list.stream().filter(x -> x.getUsername().equals(username) && x.getPassword().equals(password)).collect(Collectors.toList());
        if (list.isEmpty()) {
            return false;
        }
        return true;
    }
}
