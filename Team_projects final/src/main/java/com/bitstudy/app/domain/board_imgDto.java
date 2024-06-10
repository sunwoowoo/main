package com.bitstudy.app.domain;



public class board_imgDto {
    private Integer ki_no;
    private Integer b_no;
    private String ki_src;

    public board_imgDto() {
    }

    public board_imgDto(Integer ki_no, Integer b_no, String ki_src) {
        this.ki_no = ki_no;
        this.b_no = b_no;
        this.ki_src = ki_src;
    }

    public board_imgDto(Integer b_no, String ki_src) {
        this.b_no = b_no;
        this.ki_src = ki_src;
    }

    public Integer getKi_no() {
        return ki_no;
    }

    public void setKi_no(Integer ki_no) {
        this.ki_no = ki_no;
    }

    public Integer getB_no() {
        return b_no;
    }

    public void setB_no(Integer b_no) {
        this.b_no = b_no;
    }

    public String getKi_src() {
        return ki_src;
    }

    public void setKi_src(String ki_src) {
        this.ki_src = ki_src;
    }

    @Override
    public String toString() {
        return "board_imgDto{" +
                "ki_no=" + ki_no +
                ", b_no=" + b_no +
                ", ki_src='" + ki_src + '\'' +
                '}';
    }
}
