package com.bitstudy.app.dao;

import com.bitstudy.app.domain.BoardDto;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class boardDaoImplTest {
    @Autowired
    boardDao boardDao;
    @Test
    public void select() {
        BoardDto ttt = boardDao.select(3);
        System.out.println("ttt " + ttt);
        assertTrue(ttt.getB_no() == 3);
    }

    @Test
    public void count() {
        int result = boardDao.count();
        System.out.println(result);
        assertTrue(result > 0);
    }
//    @Test
//    public void insert(){
//        BoardDto boardDto = new BoardDto(1,"등록44","내용44","작성자1","어디든지");
//        assertTrue(boardDao.insert(boardDto)==1);
//    }
    @Test
    public void selectAll() {
        List<BoardDto> list = boardDao.selectAll();
        System.out.println(list);
        System.out.println("list size: " + list.size());
        assertTrue(list.size()>0);
    }

//    @Test
//    public void insert100(){
//        boardDao.deleteAll();
//
//        int count = 1;
//        for(int i=1; i<=71; i++) {
//            BoardDto boardDto = new BoardDto(1,"title"+count, "content"+count, "asdf","강남","1");
//            count++;
//            boardDao.insert(boardDto);
//        }
//        for(int i=1; i<=90; i++) {
//            BoardDto boardDto = new BoardDto(2,"제목"+count, "내용"+count, "asdf2","역삼","2");
//            count++;
//            boardDao.insert(boardDto);
//        }
//        for(int i=1; i<=60; i++) {
//            BoardDto boardDto = new BoardDto(3,"타이틀"+count, "컨텐츠"+count, "asdf3","선릉","3");
//            count++;
//            boardDao.insert(boardDto);
//        }
//        assertTrue(boardDao.count() >= 100);
//    }
}