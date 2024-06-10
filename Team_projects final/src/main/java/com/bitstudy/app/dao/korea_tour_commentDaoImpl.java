package com.bitstudy.app.dao;

import com.bitstudy.app.domain.korea_tour_commentDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class korea_tour_commentDaoImpl implements korea_tour_commentDao {
    @Autowired
    SqlSession session;

    String namespace="com.bitstudy.app.dao.korea_tour_commentMapper.";

    @Override
    public int deleteAll(){
        return session.delete(namespace+"deleteAll");
    }

    //cno, commenter 값 받아서 map에 넣기.
    @Override
    public int delete(Integer c_no, String c_commenter){
        Map map= new HashMap();
        map.put("c_no", c_no);
        map.put("c_commenter", c_commenter);

        //mapper.xml 의 sql문에 map 보내기.
        return session.delete(namespace+"delete", map);
    }

    @Override
    public int count(Integer k_no){
        return session.selectOne(namespace+"count", k_no);
    }

    @Override
    public List<korea_tour_commentDto> selectAll(Integer k_no){


        return session.selectList(namespace+"selectAll", k_no);
    }

    @Override
    public int insert(korea_tour_commentDto ktcDto){
        return session.insert(namespace+"insert", ktcDto);
    }

    @Override
    public int update(korea_tour_commentDto ktcDto){

        return session.update(namespace+"update", ktcDto);
    }
}
