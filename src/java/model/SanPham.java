/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Admin
 */
public class SanPham {
    private String maSP;
    private String tenSP;
    private String NXS;
    private int gia1;
    private int gia2;
    private String moTa;
    private double thue;
    private String loaiSP;
    public SanPham() {
    }
    public SanPham(String maSP, String tenSP, String NXS, int gia1, int gia2, String moTa, double thue, String loaiSP) {
        this.maSP = maSP;
        this.tenSP = tenSP;
        this.NXS = NXS;
        this.gia1 = gia1;
        this.gia2 = gia2;
        this.moTa = moTa;
        this.thue = thue;
        this.loaiSP = loaiSP;
    }
    public String getMaSP() {
        return maSP;
    }

    public void setMaSP(String maSP) {
        this.maSP = maSP;
    }

    public String getTenSP() {
        return tenSP;
    }

    public void setTenSP(String tenSP) {
        this.tenSP = tenSP;
    }

    public String getNXS() {
        return NXS;
    }

    public void setNXS(String NXS) {
        this.NXS = NXS;
    }

    public int getGia1() {
        return gia1;
    }

    public void setGia1(int gia1) {
        this.gia1 = gia1;
    }

    public int getGia2() {
        return gia2;
    }

    public void setGia2(int gia2) {
        this.gia2 = gia2;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public double getThue() {
        return thue;
    }

    public void setThue(double thue) {
        this.thue = thue;
    }

    public String getLoaiSP() {
        return loaiSP;
    }

    public void setLoaiSP(String loaiSP) {
        this.loaiSP = loaiSP;
    }

}
