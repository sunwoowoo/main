package com.bitstudy.app.domain;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class korea_tourDto {
    private Integer k_no;
    private String k_title;
    private String k_content;
    private String k_state;
    private String k_city;
    private String k_start;
    private String k_end;
    private String k_writer;
    private String k_tag;
    private Integer k_price;
    private Integer k_sonnel;
    private String k_tra_img;




    private boolean gender;
    private String birth;
    private String email;
    private String picture;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date reg_date;

    public korea_tourDto() {
    }

    public korea_tourDto(String k_title, String k_content, String k_state, String k_city, String k_start, String k_end, String k_writer, String k_tag, int k_price, int k_sonnel, String k_tra_img) {
        this.k_title = k_title;
        this.k_content = k_content;
        this.k_state = k_state;
        this.k_city = k_city;
        this.k_start = k_start;
        this.k_end = k_end;
        this.k_writer = k_writer;
        this.k_tag = k_tag;
        this.k_price = k_price;
        this.k_sonnel = k_sonnel;
        this.k_tra_img = k_tra_img;
    }

    public boolean isGender() {
        return gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public void setK_price(Integer k_price) {
        this.k_price = k_price;
    }

    public void setK_sonnel(Integer k_sonnel) {
        this.k_sonnel = k_sonnel;
    }
    public String getK_tag() {
        return k_tag;
    }

    public void setK_tag(String k_tag) {
        this.k_tag = k_tag;
    }

    public Integer getK_no() {
        return k_no;
    }

    public void setK_no(Integer k_no) {
        this.k_no = k_no;
    }

    public String getK_title() {
        return k_title;
    }

    public void setK_title(String k_title) {
        this.k_title = k_title;
    }

    public String getK_content() {
        return k_content;
    }

    public void setK_content(String k_content) {
        this.k_content = k_content;
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

    public String getK_writer() {
        return k_writer;
    }

    public void setK_writer(String k_writer) {
        this.k_writer = k_writer;
    }

    public int getK_price() {
        return k_price;
    }

    public void setK_price(int k_price) {
        this.k_price = k_price;
    }

    public int getK_sonnel() {
        return k_sonnel;
    }

    public void setK_sonnel(int k_sonnel) {
        this.k_sonnel = k_sonnel;
    }

    public String getK_tra_img() {
        return k_tra_img;
    }

    public void setK_tra_img(String k_tra_img) {
        this.k_tra_img = k_tra_img;
    }

    public Date getReg_date() {
        return reg_date;
    }

    public void setReg_date(Date reg_date) {
        this.reg_date = reg_date;
    }
}
