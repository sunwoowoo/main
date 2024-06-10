package com.bitstudy.app.service;

import com.bitstudy.app.dao.boardDao;
import com.bitstudy.app.dao.commentDao;
import com.bitstudy.app.domain.commentDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class commentService {
    @Autowired
    boardDao boardDao;

    @Autowired
    commentDao commentDao;

    //댓글 불러오기
    public List<commentDto> getList(Integer b_no){
        return commentDao.selectAll(b_no);
    }

    //댓글 쓰기
    public int write(commentDto commentDto){
        return commentDao.insert(commentDto);
    }

    //댓글 수정
    public int modify(commentDto commentDto){
        return commentDao.update(commentDto);
    }

    //댓글 삭제
    public int remove(Integer b_no,Integer c_no, String c_writer){
        return commentDao.delete(c_no,c_writer);
    }



}
