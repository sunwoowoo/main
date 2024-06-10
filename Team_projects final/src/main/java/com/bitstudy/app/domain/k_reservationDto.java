package com.bitstudy.app.domain;

public class k_reservationDto {
    private Integer r_no;
    private Integer k_no;
    private String k_writer;
    private String id;
    private String r_state;


    public k_reservationDto() {
    }

    public k_reservationDto(Integer k_no, String k_writer, String id) {
        this.k_no = k_no;
        this.k_writer = k_writer;
        this.id = id;
    }

    public Integer getR_no() {
        return r_no;
    }

    public void setR_no(Integer r_no) {
        this.r_no = r_no;
    }

    public Integer getK_no() {
        return k_no;
    }

    public void setK_no(Integer k_no) {
        this.k_no = k_no;
    }

    public String getK_writer() {
        return k_writer;
    }

    public void setK_writer(String k_writer) {
        this.k_writer = k_writer;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getR_state() {
        return r_state;
    }

    public void setR_state(String r_state) {
        this.r_state = r_state;
    }
}
