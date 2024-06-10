package com.bitstudy.app.dao;

import com.bitstudy.app.domain.commentDto;

import java.util.List;

public interface commentDao {

    List<commentDto> selectAll(Integer b_no);

    int insert(commentDto commentDto);

    int update(commentDto commentDto);

    int delete(Integer c_no, String c_writer);
}
