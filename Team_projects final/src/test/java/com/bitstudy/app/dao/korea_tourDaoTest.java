package com.bitstudy.app.dao;

import com.bitstudy.app.domain.korea_tourDto;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.assertTrue;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class korea_tourDaoTest {
    @Autowired
    korea_tourDao korea_tourDao;
    @Test
    public void count() {
        assertTrue(korea_tourDao.count()==11);
    }

    @Test
    public void select() {
    }

    @Test
    public void selectAll() {
    }

    @Test
    public void selectPage() {
    }

    @Test
    public void deleteAll() {
    }

    @Test
    public void delete() {
    }

    @Test
    public void deleteForAdmin() {
    }

    @Test
    public void insert() {

    }

    @Test
    public void update() {
    }

    @Test
    public void testUpdate() {
    }

    @Test
    public void increaseViewCount() {
    }

    @Test
    public void searchSelectPage() {
    }

    @Test
    public void searchSelectCount() {
    }

    @Test
    public void updateCommentCount() {
    }
    @Test
    public void Insert100() {
        korea_tourDao.deleteAll();

//        for(int i=1; i<=11; i++) {
//            korea_tourDto ktDto = new korea_tourDto("투어"+count, "맛집"+count,"강원도","강릉","2024-06-03","2024-06-03", "asdf","미식", 100000,2,"1.png");
//            count++;
//            korea_tourDao.insert(ktDto);
//        }
//        for(int i=1; i<=10; i++) {
//            korea_tourDto ktDto = new korea_tourDto("바다"+count, "힐링"+count,"강원도","동해","2024-06-29","2024-06-31", "asdf2","관광", 150000,3,"2.png");
//            count++;
//            korea_tourDao.insert(ktDto);
//        }
//        for(int i=1; i<=20; i++) {
//            korea_tourDto ktDto = new korea_tourDto("여행"+count, "컨텐츠"+count, "경기도","서울","2024-06-08","2024-06-08", "asdf3","관광", 250000,4,"3.png");
//            count++;
//            korea_tourDao.insert(ktDto);
//        }
        int count = 1;
        for(int i=1; i<=10; i++) {

            korea_tourDto ktDto = new korea_tourDto("여행"+count, "컨텐츠"+count, "경기도","서울","2024-06-04","2024-06-04", "asdf"+count,"문화/예술", 300000,4,"3.png");
            count++;
            korea_tourDao.insert(ktDto);
        }
        count = 1;
        for(int i=1; i<=10; i++) {

            korea_tourDto ktDto = new korea_tourDto("여행"+count, "컨텐츠"+count, "충청도","대전","2024-06-05","2024-06-05", "qwer"+count,"미식", 400000,4,"1.png");
            count++;
            korea_tourDao.insert(ktDto);
        }
//        for(int i=1; i<=20; i++) {
//            int count = 1;
//            korea_tourDto ktDto = new korea_tourDto("여행"+count, "컨텐츠"+count, "경상도","대구","2024-06-06","2024-06-06", "asdf8","관광", 450000,4,"3.png");
//            count++;
//            korea_tourDao.insert(ktDto);
//        }
//        for(int i=1; i<=20; i++) {
//            int count = 1;
//            korea_tourDto ktDto = new korea_tourDto("여행"+count, "컨텐츠"+count, "경상도","대구","2024-06-08","2024-06-08", "asdf9","관광", 450000,4,"3.png");
//            count++;
//            korea_tourDao.insert(ktDto);
//        }
//        for(int i=1; i<=20; i++) {
//            int count = 1;
//            korea_tourDto ktDto = new korea_tourDto("여행"+count, "컨텐츠"+count, "전라도","목포","2024-06-10","2024-06-10", "asdf10","관광", 450000,4,"3.png");
//            count++;
//            korea_tourDao.insert(ktDto);
//        }
        count = 1;
        for(int i=1; i<=10; i++) {

            korea_tourDto ktDto = new korea_tourDto("여행"+count, "컨텐츠"+count, "경기도","인천","2024-06-11","2024-06-11", "zxcv"+count,"관광", 450000,4,"2.png");
            count++;
            korea_tourDao.insert(ktDto);
        }
        assertTrue(korea_tourDao.count() >= 20);
    }
}