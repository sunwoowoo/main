package com.bitstudy.app.dao;

import com.bitstudy.app.domain.UserDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class mypageDaoImpl implements mypageDao {
    @Autowired
    SqlSession SqlSession;

    String namespace = "com.bitstudy.app.dao.mypageMapper.";
    @Override
    public UserDto select(String id){
        return SqlSession.selectOne(namespace+"select", id);
    }
}
