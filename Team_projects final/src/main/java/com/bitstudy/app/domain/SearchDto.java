package com.bitstudy.app.domain;

import org.springframework.web.util.UriComponentsBuilder;

public class SearchDto {
    private Integer page=1;
    private Integer pageSize=4;
    private Integer offset = 0;

    public SearchDto(){}

    public SearchDto(Integer page, Integer pageSize) {
        this.page = page;
        this.pageSize = pageSize;

    }

    public String getQueryString(){return getQueryString(page);}

    public String getQueryString(Integer page){
        return UriComponentsBuilder.newInstance()
                .queryParam("page",page)
                .queryParam("pageSize",pageSize)
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

    public Integer getOffset() {
        return offset;
    }

    public void setOffset(Integer offset) {
        this.offset = offset;
    }

    @Override
    public String toString() {
        return "SearchDto{" +
                "page=" + page +
                ", pageSize=" + pageSize +
                ", offset=" + offset +
                '}';
    }
}
