package com.bitstudy.app.domain;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class BoardDto {
    private Integer b_no;

    private String b_title;
    private String b_content;
    private String b_writer;
    private int b_view_count;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date b_date;

    private String b_place;

    private String ki_src;

    public BoardDto(){

    }
    public BoardDto(String b_title, String b_content, String b_place){
        System.out.println("1");
        this.b_title = b_title;
        this.b_content = b_content;
        this.b_place = b_place;
    }

    public BoardDto(Integer b_no, String b_writer) {
        this.b_no = b_no;
        this.b_writer = b_writer;
    }

    public BoardDto(String b_title, String b_content, String b_writer, String b_place, String ki_src){
        System.out.println("2");

        this.b_title = b_title;
        this.b_content = b_content;
        this.b_writer = b_writer;
        this.b_place = b_place;
        this.ki_src = ki_src;
    }
    public BoardDto(String b_title, String b_content, String b_writer, String b_place){
        System.out.println("3");
        this.b_title = b_title;
        this.b_content=b_content;
        this.b_place=b_place;
        this.b_writer=b_writer;
    }

    public Integer getB_no() {
        return b_no;
    }

    public void setB_no(Integer b_no) {
        this.b_no = b_no;
    }



    public String getB_title() {
        return b_title;
    }

    public void setB_title(String b_title) {
        this.b_title = b_title;
    }

    public String getB_content() {
        return b_content;
    }

    public void setB_content(String b_content) {
        this.b_content = b_content;
    }

    public String getB_writer() {
        return b_writer;
    }

    public void setB_writer(String b_writer) {
        this.b_writer = b_writer;
    }

    public int getB_view_count() {
        return b_view_count;
    }

    public void setB_view_count(int b_view_count) {
        this.b_view_count = b_view_count;
    }

    public Date getB_date() {
        return b_date;
    }

    public void setB_date(Date b_date) {
        this.b_date = b_date;
    }

    public String getB_place() {
        return b_place;
    }

    public void setB_place(String b_place) {
        this.b_place = b_place;
    }

    public String getKi_src() {
        return ki_src;
    }

    public void setKi_src(String ki_src) {
        this.ki_src = ki_src;
    }

    @Override
    public String toString() {
        return "BoardDto{" +
                "b_no=" + b_no +
                ", b_title='" + b_title + '\'' +
                ", b_content='" + b_content + '\'' +
                ", b_writer='" + b_writer + '\'' +
                ", b_view_count=" + b_view_count +
                ", b_date=" + b_date +
                ", b_place='" + b_place + '\'' +
                ", ki_src='" + ki_src + '\'' +
                '}';
    }
}
