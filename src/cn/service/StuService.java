package cn.service;

import cn.dao.StuMapper;
import cn.model.Stu;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StuService {
    @Autowired
    private StuMapper stuDao;

    public Stu selectByPrimaryKey(String id) {
        return stuDao.selectByPrimaryKey(id);
    }

    public void update(Stu stu) {
        stuDao.updateByPrimaryKeySelective(stu);
    }

    public List<Stu> queryAll() {
        return stuDao.queryAll();
    }

    public void insert(Stu stu) {
        stuDao.insert(stu);
    }

    public void del(String id) {
        stuDao.deleteByPrimaryKey(id);
    }
}
