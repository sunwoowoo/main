package com.bitstudy.app.dao;

import com.bitstudy.app.domain.BoardDto;

import java.util.List;
import java.util.Map;

public interface boardDao {
    BoardDto select(int b_no);
    int count();

    List<BoardDto> selectAll();

    List<BoardDto> selectPage(Map map);

    List<BoardDto> selectviewSeqPage(Map map);

    int insert(BoardDto dto);

    int deleteAll();

    int lastb_no();

    int increaseViewCount(Integer b_no);

    int update(BoardDto dto);

    int delete(Integer b_no, String b_writer);
}
