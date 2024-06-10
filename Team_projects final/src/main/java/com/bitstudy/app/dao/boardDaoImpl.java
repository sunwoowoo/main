package com.bitstudy.app.dao;

import com.bitstudy.app.domain.BoardDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class boardDaoImpl implements boardDao {
    @Autowired
    SqlSession session;

    String namespace="com.bitstudy.app.dao.BoardMapper.";

    @Override
    public BoardDto select(int b_no){
        return session.selectOne(namespace+"select", b_no);
    }

    @Override
    public int count(){
        return  session.selectOne(namespace+"count");
    }

    public List<BoardDto> selectAll(){
        return session.selectList(namespace+"selectAll");
    }

    public List<BoardDto> selectPage(Map map){
        return session.selectList(namespace+"selectPage", map);
    }

    public List<BoardDto> selectviewSeqPage(Map map){return session.selectList(namespace+"viewSeq", map);}

    public int delete(Integer b_no, String b_writer){
        Map map = new HashMap();
        map.put("b_no",b_no);
        map.put("b_writer", b_writer);

        return session.delete(namespace+"delete", map);
    }

    public int insert(BoardDto dto){

        System.out.println("여기2: " + dto);
        return session.insert(namespace+"insert", dto);
    }

    public int deleteAll(){
        return session.delete(namespace+"deleteAll");
    }

    public int lastb_no(){
        return session.selectOne(namespace+"lastb_no");
    }

    public int increaseViewCount(Integer b_no){
        return session.update(namespace+"increaseViewCount",b_no);
    }

    public int update(BoardDto dto){
        return session.update(namespace+"update", dto);
    }
}
