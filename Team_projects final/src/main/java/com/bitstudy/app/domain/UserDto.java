package com.bitstudy.app.domain;

import java.util.Date;

public class UserDto {
    private Integer seqno;
    private String id;
    private String pw;
    private String name;
    private String email;
    private String birth;
    private String picture;
    private String gender;

    public UserDto() { this("","","","");}

    public UserDto( String picture,String name, String email, String birth) {
        this.picture=picture;
        this.name = name;
        this.email = email;
        this.birth = birth;
    }
    public UserDto(Integer seqno, String id, String pw, String name, String email, String birth, String picture, String gender) {
        this.seqno = seqno;
        this.id = id;
        this.pw = pw;
        this.name = name;
        this.email = email;
        this.birth = birth;
        this.picture = picture;
        this.gender = gender;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }
    public Integer getSeqno() {
        return seqno;
    }

    public void setSeqno(Integer seqno) {
        this.seqno = seqno;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPw() {
        return pw;
    }

    public void setPw(String pw) {
        this.pw = pw;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }


    @Override
    public String toString() {
        return "UserDto{" +
                "seqno=" + seqno +
                ", id='" + id + '\'' +
                ", pw='" + pw + '\'' +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", birth='" + birth + '\'' +
                ", picture='" + picture + '\'' +
                '}';
    }
}
