/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import com.mysql.jdbc.Connection;
import common.ConnectDB;
import java.io.File;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.jsp.jstl.sql.Result;
import javax.swing.JFileChooser;
import javax.swing.filechooser.FileNameExtensionFilter;

/**
 *
 * @author Admin
 */
public class noithatDAO {

    PreparedStatement ps1, ps2, ps3, ps4, ps5, ps6, ps7, ps8, ps9, ps10, ps11, ps12;
    Connection con = null;
    ConnectDB cn = new ConnectDB();
    Vector list;
    public Vector getAllList() throws SQLException {
        list = new Vector();
        con = cn.getConnect();
        try {
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select * from sanpham");
            while (rs.next()) {
                Vector tam = new Vector();
                tam.add(rs.getString(1));
                tam.add(rs.getString(2));
                tam.add(rs.getString(3));
                tam.add(rs.getString(4));
                tam.add(rs.getInt(5));
                tam.add(rs.getString(6));
                tam.add(rs.getString(7));
                tam.add(rs.getString(8));
                list.add(tam);
            }
        } catch (Exception e) {
            System.out.println(e.toString());
        }
        con.close();
        return list;
    }
    public int addSP(SanPham sp) {
        try {
            con = cn.getConnect();
            String SQLInsert = "INSERT INTO `sanpham`(`MaSP`, `TenSP`, `NSX`, `GiaNhap`, `GiaBan`, `Thue`, `MoTa`, `LOAISANPHAM_MaLSP`)"
                    + " VALUES (?,?,?,?,?,?,?,?)";
            ps2 = con.prepareStatement(SQLInsert);
            ps2.setString(1, sp.getMaSP());
            ps2.setString(2, sp.getTenSP());
            ps2.setString(3, sp.getNXS());
            ps2.setInt(4, sp.getGia1());
            ps2.setInt(5, sp.getGia2());
            ps2.setDouble(6, sp.getThue());
            ps2.setString(7, sp.getMoTa());
            ps2.setString(8, sp.getLoaiSP());
            if (ps2.executeUpdate() == 1) {
                return 1;
            }
        } catch (Exception e) {
            System.out.println("Error:" + e.toString());
            return -1;
        }
        return -1;
    }
    public int updateSanPhamByID(SanPham sp) {
        con = cn.getConnect();
        try {
            String SQLInsert = "UPDATE `sanpham` SET `TenSP`=?,`NSX`=?,`GiaNhap`=?,`GiaBan`=?,`Thue`=?,`Mota`=?,`LOAISANPHAM_MaLSP`=? WHERE `MaSP`=?";
            ps5 = con.prepareStatement(SQLInsert);
            ps5.setString(1, sp.getTenSP());
            ps5.setString(2, sp.getNXS());
            ps5.setInt(3, sp.getGia1());
            ps5.setInt(4, sp.getGia2());
            ps5.setDouble(5, sp.getThue());
            ps5.setString(6, sp.getMoTa());
            ps5.setString(7, sp.getLoaiSP());
            ps5.setString(8, sp.getMaSP());
            if (ps5.executeUpdate() == 1) {
                return 1;
            }
        } catch (Exception e) {
            return -1;
        }
        return -1;
    }
    public Vector findSanPhamByID(String id) {
        con = cn.getConnect();
        Vector a = new Vector();
        try {
            ps3 = con.prepareStatement("Select * from sanpham where maSP =?");
            ps3.setString(1, id);
            ResultSet rs = ps3.executeQuery();
            while (rs.next()) {
                a.add(rs.getString(1));
                a.add(rs.getString(2));
                a.add(rs.getString(3));
                a.add(rs.getInt(4));
                a.add(rs.getInt(5));
                a.add(rs.getDouble(6));
                a.add(rs.getString(7));
                a.add(rs.getString(8));
            }
            rs.close();
            ps3.close();
        } catch (SQLException ex) {
            Logger.getLogger(noithatDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return a;
    }
    public int removeSanPhamByID(String id) {
        try {
            Vector a;
            con = cn.getConnect();
            String SQLInsert = "Delete from `sanpham` where MaSP = ? ";
            ps4 = con.prepareStatement(SQLInsert);
            ps4.setString(1, id);
            if (ps4.executeUpdate() == 1) {
                a = findSanPhamByID(id);
                getAllList().remove(a);
                return 1;
            }
        } catch (Exception e) {
            System.out.println("Error:" + e.toString());
            return -1;
        }
        return -1;
    }
    public Vector getList() {
        return list;
    }

    public void setList(Vector list) {
        this.list = list;
    }

    public static void main(String[] args) throws SQLException {
        noithatDAO nt = new noithatDAO();
        SanPham sp = new SanPham("s", "ss", "ss", 0, 0, "a", 0, "LS002");
        nt.addSP(sp);
    }
}
