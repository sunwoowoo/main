package com.bitstudy.app.dao;

import com.bitstudy.app.domain.commentDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class commentDaoImpl implements commentDao {
    @Autowired
    SqlSession session;

    String namespace="com.bitstudy.app.dao.CommentMapper.";

    public List<commentDto> selectAll(Integer b_no){
        return session.selectList(namespace+"selectAll",b_no);
    }

    public int insert(commentDto commentDto){
        return session.insert(namespace+"insert",commentDto);
    }

    public int update(commentDto commentDto){
        return session.update(namespace+"update",commentDto);
    }

    public int delete(Integer c_no, String c_writer){
        Map map = new HashMap();
        map.put("c_no", c_no);
        map.put("c_writer",c_writer);

        return session.delete(namespace+"delete", map);
    }


}
