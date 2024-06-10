package com.bitstudy.app.domain;

import java.util.Date;

public class korea_tour_commentDto {
    private Integer level;
    private Integer c_no;
    private Integer k_no;
    private String c_content;
    private String c_commenter;
    private Integer parent_c_no;
    private String c_state;
    private Date c_regdate;
    private Date c_update;


    public korea_tour_commentDto() {
    }

    public korea_tour_commentDto(Integer k_no, String c_content, String c_commenter) {
        this.k_no = k_no;
        this.c_content = c_content;
        this.c_commenter = c_commenter;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public Integer getC_no() {
        return c_no;
    }

    public void setC_no(Integer c_no) {
        this.c_no = c_no;
    }

    public Integer getK_no() {
        return k_no;
    }

    public void setK_no(Integer k_no) {
        this.k_no = k_no;
    }

    public String getC_content() {
        return c_content;
    }

    public void setC_content(String c_content) {
        this.c_content = c_content;
    }

    public String getC_commenter() {
        return c_commenter;
    }

    public void setC_commenter(String c_commenter) {
        this.c_commenter = c_commenter;
    }

    public Integer getParent_c_no() {
        return parent_c_no;
    }

    public void setParent_c_no(Integer parent_c_no) {
        this.parent_c_no = parent_c_no;
    }

    public String getC_state() {
        return c_state;
    }

    public void setC_state(String c_state) {
        this.c_state = c_state;
    }

    public Date getC_regdate() {
        return c_regdate;
    }

    public void setC_regdate(Date c_regdate) {
        this.c_regdate = c_regdate;
    }

    public Date getC_update() {
        return c_update;
    }

    public void setC_update(Date c_update) {
        this.c_update = c_update;
    }
}
