package com.bitstudy.app.dao;

import com.bitstudy.app.domain.board_imgDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class board_imgDaoImpl implements board_imgDao {
    @Autowired
    SqlSession session;

    String namespace="com.bitstudy.app.dao.boardimgMapper.";

    public int insert_img(board_imgDto dto){
        return session.insert(namespace+"insert_img", dto);

    }
    public int imgupdate(board_imgDto dto){
        return session.update(namespace+"imgupdate",dto);
    }

    public int imgdelete(Integer b_no){
        return session.delete(namespace+"imgdelete",b_no);
    }
}
