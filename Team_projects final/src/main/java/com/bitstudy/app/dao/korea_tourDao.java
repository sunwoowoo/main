package com.bitstudy.app.dao;

import com.bitstudy.app.domain.Do_areaDTO;
import com.bitstudy.app.domain.Si_areaDTO;
import com.bitstudy.app.domain.k_searchDto;
import com.bitstudy.app.domain.korea_tourDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class korea_tourDao {
    @Autowired
    SqlSession session;

    String namespace="com.bitstudy.app.dao.korea_tourMapper.";

    public int count() {
        return session.selectOne(namespace+"count");
    }

    public korea_tourDto select(int k_no) {

        return session.selectOne(namespace + "select", k_no);
    }

        public List<korea_tourDto> selectAll() {
            return session.selectList(namespace+"selectAll");
        }



        public List<korea_tourDto> selectPage(Map map) {
            return session.selectList(namespace+"selectPage", map);
        }

        // 전체 다 삭제


        public int deleteAll() {
            return session.delete(namespace+"deleteAll");
        }

        // 하나만 삭제 - 게시물 삭제시 글번호,글쓴이 정보를 같이 넘겨서 로그인한 사람과 글쓴이가 같은지도 비교


        public int delete(Integer k_no, String k_writer) {
            System.out.println(k_no +", " + k_writer);

            Map map = new HashMap();
            map.put("k_no", k_no);
            map.put("k_writer", k_writer);

            return session.delete(namespace+"delete", map);
        }

        // 관리자용 삭제 - k_no 만 알아도 지울수 있게 하기


        public int deleteForAdmin(Integer k_no) {
            return session.delete(namespace+"deleteForAdmin", k_no);
        }


//게시글 등록
        public int insert(korea_tourDto dto) {
            return session.insert(namespace+"insert", dto);
        }




        public int update(korea_tourDto dto) {
            return session.update(namespace+"update", dto);
        }



        public int update(Map map) {
            System.out.println("update2");
            return session.update(namespace+"update2", map);
        }



        public int increaseViewCount(Integer k_no) {
            return session.update(namespace+"increaseViewCount", k_no);
        }


        // 검색

        public List<korea_tourDto> searchSelectPage(k_searchDto sc) {
            System.out.println(sc);
            return session.selectList(namespace+"searchSelectPage", sc);
        }


        public int searchSelectCount(k_searchDto sc) {
            return session.selectOne(namespace+"searchSelectCount", sc);
        }


        // 댓글 수 증감
        public int updateCommentCount(Integer k_no, int count) {
            Map map = new HashMap();
            map.put("k_no",k_no);
            map.put("count",count);

            return session.update(namespace+"updateCommentCount",map);
        }


        // 도 불러오기
    public List<Do_areaDTO> getDoList(){

        return session.selectList(namespace+"getDoList");

    }

    // 시 불러오기
    public List<Si_areaDTO> getSiList(int do_id){
        return session.selectList(namespace+"getSiList", do_id);
    }
}
