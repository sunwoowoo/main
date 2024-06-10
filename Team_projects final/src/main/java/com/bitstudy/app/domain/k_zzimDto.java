package com.bitstudy.app.domain;

public class k_zzimDto {
    private Integer z_no;
    private String u_id;
    private Integer k_no;

    public k_zzimDto() {
    }

    public k_zzimDto(String u_id, Integer k_no) {
        this.u_id = u_id;
        this.k_no = k_no;
    }

    public Integer getZ_no() {
        return z_no;
    }

    public void setZ_no(Integer z_no) {
        this.z_no = z_no;
    }

    public String getU_id() {
        return u_id;
    }

    public void setU_id(String u_id) {
        this.u_id = u_id;
    }

    public Integer getK_no() {
        return k_no;
    }

    public void setK_no(Integer k_no) {
        this.k_no = k_no;
    }

    @Override
    public String toString() {
        return "k_zzimDto{" +
                "z_no=" + z_no +
                ", u_id='" + u_id + '\'' +
                ", k_no=" + k_no +
                '}';
    }
}
