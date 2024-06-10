package com.bitstudy.app.dao;

import com.bitstudy.app.domain.board_imgDto;

public interface board_imgDao {
    int insert_img(board_imgDto dto);

    int imgupdate(board_imgDto dto);

    int imgdelete(Integer b_no);
}
