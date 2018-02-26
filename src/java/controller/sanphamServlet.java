/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.SanPham;
import model.noithatDAO;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Admin
 */
public class sanphamServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    noithatDAO nt = new noithatDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use follo    wing sample code. */
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            String maSP = request.getParameter("maSP");
            String tenSP = request.getParameter("name");
            String loaiSP = request.getParameter("type");
            String NSX = request.getParameter("producer");
            String gia1 = request.getParameter("price1");
            String gia2 = request.getParameter("price2");
            String thue = request.getParameter("thue");
            String mota = request.getParameter("describe");
            String action = request.getParameter("action");
            switch (action) {
                case "add":
                    request.setAttribute("LIST_PRODUCT", nt.getAllList());
                    request.setAttribute("PRODUCT", nt.findSanPhamByID(maSP));
                    SanPham sp = new SanPham(maSP, tenSP, NSX, Integer.parseInt(gia1), Integer.parseInt(gia2), mota, Double.parseDouble(thue), loaiSP);
                    if(nt.addSP(sp)==1){
                    request.getRequestDispatcher("view_qlhh.jsp").forward(request, response);
                    }else{
                    out.print("1");
                    }
                    break;
                case "edit":
                    request.setAttribute("LIST_PRODUCT", nt.getAllList());
                    request.setAttribute("PRODUCT", nt.findSanPhamByID(maSP));
                    request.getRequestDispatcher("qlhh.jsp").forward(request, response);
                    break;
                case "del":
                    nt.removeSanPhamByID(maSP);
                    request.setAttribute("LIST_PRODUCT", nt.getAllList());
                    request.getRequestDispatcher("view_qlhh.jsp").forward(request, response);
                    break;
                case "update":
                    SanPham sp3 = new SanPham(maSP, tenSP, NSX, Integer.parseInt(gia1), Integer.parseInt(gia2), mota, Double.parseDouble(thue), loaiSP);
                    if (nt.updateSanPhamByID(sp3) > 0) {
                        request.setAttribute("LIST_PRODUCT", nt.getAllList());
                        request.getRequestDispatcher("view_qlhh.jsp").forward(request, response);
                    } else {
                        out.print("update fail");
                    }
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(sanphamServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(sanphamServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
