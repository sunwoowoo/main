package com.bitstudy.app.domain;

import java.util.Date;

public class commentDto {
    private Integer c_no;
    private Integer b_no;
    private String c_content;
    private String c_writer;
    private Date c_date;

    public commentDto() {
    }

    public commentDto(Integer b_no, String c_content, String c_writer) {
        this.b_no = b_no;
        this.c_content = c_content;
        this.c_writer = c_writer;
    }

    public commentDto(Integer c_no, String c_writer) {
        this.c_no = c_no;
        this.c_writer = c_writer;
    }

    public Integer getC_no() {
        return c_no;
    }

    public void setC_no(Integer c_no) {
        this.c_no = c_no;
    }

    public Integer getB_no() {
        return b_no;
    }

    public void setB_no(Integer b_no) {
        this.b_no = b_no;
    }

    public String getC_content() {
        return c_content;
    }

    public void setC_content(String c_content) {
        this.c_content = c_content;
    }

    public String getC_writer() {
        return c_writer;
    }

    public void setC_writer(String c_writer) {
        this.c_writer = c_writer;
    }

    public Date getC_date() {
        return c_date;
    }

    public void setC_date(Date c_date) {
        this.c_date = c_date;
    }

    @Override
    public String toString() {
        return "commentDto{" +
                "c_no=" + c_no +
                ", b_no=" + b_no +
                ", c_content='" + c_content + '\'' +
                ", c_writer='" + c_writer + '\'' +
                ", c_date=" + c_date +
                '}';
    }
}
