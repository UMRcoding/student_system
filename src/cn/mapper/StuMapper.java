package cn.mapper;

import cn.pojo.Stu;

import java.util.List;

public interface StuMapper {
    int deleteByPrimaryKey(String id);

    int insert(Stu record);

    int insertSelective(Stu record);

    Stu selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Stu record);

    int updateByPrimaryKey(Stu record);

    List<Stu> queryAll();
}