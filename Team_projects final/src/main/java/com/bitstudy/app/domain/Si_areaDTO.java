package com.bitstudy.app.domain;

public class Si_areaDTO {
    private Integer si_id;
    private String si_area;
    private Integer do_id;

    public Si_areaDTO() {
    }

    public Si_areaDTO(Integer si_id, String si_area, Integer do_id) {
        this.si_id = si_id;
        this.si_area = si_area;
        this.do_id = do_id;
    }



    public Integer getSi_id() {
        return si_id;
    }

    public void setSi_id(Integer si_id) {
        this.si_id = si_id;
    }

    public String getSi_area() {
        return si_area;
    }

    public void setSi_area(String si_area) {
        this.si_area = si_area;
    }

    public Integer getDo_id() {
        return do_id;
    }

    public void setDo_id(Integer do_id) {
        this.do_id = do_id;
    }

    @Override
    public String toString() {
        return "Si_areaDTO{" +
                "si_id=" + si_id +
                ", si_area='" + si_area + '\'' +
                ", do_id=" + do_id +
                '}';
    }
}
