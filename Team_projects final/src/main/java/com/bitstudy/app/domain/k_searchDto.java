package com.bitstudy.app.domain;

import org.springframework.web.util.UriComponentsBuilder;

/* boardMapper 의 검색 keyword, offset, pageSize 값이 필요함
*  추가로 검색옵션(제목+내용, 내용, 작성자) 도 있으니깐 option 변수 필요하고
*  현재 몇페이지 보고 있었는지도 알아야 한니까 page, pageSize 도 만들어준다 */
public class k_searchDto {
    // 일단 기본값 넣어주기. 기본 생성자(Ex11_searchDto) 사용시 값을 받지 않기 때문에 기본값 세팅해놓음
    private Integer page=1;
    private Integer pageSize=6; // 한페이지 게시물: 10 개씩
    private String keyword="";
    private String k_state="";
    private String k_city="";
    private String k_start= "";
    private String k_end="";
    private String k_tag="";
    private String k_sort="";
    private Integer offset=0;

    /* 추가*/
    private Integer gender;
    private String birth;


    public k_searchDto(Integer page, Integer pageSize, String keyword, String k_state, String k_city, String k_start, String k_end, String k_tag, String k_sort, Integer offset) {
        this.page = page;
        this.pageSize = pageSize;
        this.keyword = keyword;
        this.k_state = k_state;
        this.k_city = k_city;
        this.k_start = k_start;
        this.k_end = k_end;
        this.k_tag = k_tag;
        this.k_sort = k_sort;
        this.offset = offset;
    }

    public k_searchDto(Integer page, Integer pageSize, String keyword, String k_state, String k_city, String k_start, String k_end, String k_tag, String k_sort, Integer offset, Integer gender, String birth) {
        this.page = page;
        this.pageSize = pageSize;
        this.keyword = keyword;
        this.k_state = k_state;
        this.k_city = k_city;
        this.k_start = k_start;
        this.k_end = k_end;
        this.k_tag = k_tag;
        this.k_sort = k_sort;
        this.offset = offset;
        this.gender = gender;
        this.birth = birth;
    }

    public String getK_sort() {
        return k_sort;
    }

    public void setK_sort(String k_sort) {
        this.k_sort = k_sort;
    }

    public Integer getGender() {
        return gender;
    }

    public void setGender(Integer gender) {
        this.gender = gender;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public String getK_tag() {
        return k_tag;
    }

    public void setK_tag(String k_tag) {
        this.k_tag = k_tag;
    }

    public String getK_order() {
        return k_sort;
    }

    public void setK_order(String k_sort) {
        this.k_sort = k_sort;
    }

    public k_searchDto() { }

    public k_searchDto(Integer page, Integer pageSize, String keyword, String k_state, String k_city, String k_start, String k_end) {
        this.page = page;
        this.pageSize = pageSize;
        this.keyword = keyword;
        this.k_state = k_state;
        this.k_city = k_city;
        this.k_start = k_start;
        this.k_end = k_end;
    }


    /*
    페이지 데이터 뽑는거
    검색하고 페이징 부분의 숫자 누르거나 글수정,삭제 눌렀을때 url에 있는 기존 검색 옵션들을 그대로 유지할 수 있게 해줌
     */
    public String getQueryString() {
        return getQueryString(page);
    }
    public String getQueryString(Integer page) {
        return UriComponentsBuilder.newInstance()
                .queryParam("page", page)
                .queryParam("pageSize", pageSize)
                .queryParam("keyword", keyword)
                .queryParam("k_state", k_state)
                .queryParam("k_city", k_city)
                .queryParam("k_start", k_start)
                .queryParam("k_end", k_end)
                .queryParam("k_tag", k_tag)
                .queryParam("k_sort", k_sort)
                .build().toString();
    }



    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String getK_state() {
        return k_state;
    }

    public void setK_state(String k_state) {
        this.k_state = k_state;
    }

    public String getK_city() {
        return k_city;
    }

    public void setK_city(String k_city) {
        this.k_city = k_city;
    }

    public String getK_start() {
        return k_start;
    }

    public void setK_start(String k_start) {
        this.k_start = k_start;
    }

    public String getK_end() {
        return k_end;
    }

    public void setK_end(String k_end) {
        this.k_end = k_end;
    }

    public Integer getOffset() {
        return offset;
    }

    public void setOffset(Integer offset) {
        this.offset = offset;
    }

    @Override
    public String toString() {
        return "k_searchDto{" +
                "page=" + page +
                ", pageSize=" + pageSize +
                ", keyword='" + keyword + '\'' +
                ", k_state='" + k_state + '\'' +
                ", k_city='" + k_city + '\'' +
                ", k_start='" + k_start + '\'' +
                ", k_end='" + k_end + '\'' +
                ", k_tag='" + k_tag + '\'' +
                ", k_sort='" + k_sort + '\'' +
                ", offset=" + offset +
                '}';
    }
}
