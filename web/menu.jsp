<%-- 
    Document   : menu
    Created on : Oct 1, 2017, 10:37:44 AM
    Author     : Admin
--%>

<%@page import="common.ConnectDB"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="model.noithatDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% noithatDAO nt = new noithatDAO();%>
<nav class="navbar navbar-inverse">
    <div class="container-fluid" >
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>                        
            </button>
            <a class="navbar-brand" href="index.jsp"><span class="glyphicon glyphicon-home"></span> HL shop</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav" style="list-style-type: none;">
                <li><a href="about.jsp">Giới thiệu</a></li>
                <li><a href="product.jsp">Sản phẩm</a></li>
                <li><a href="contact.jsp">Liên hệ</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right" >
                <%       
                            response.sendRedirect("index.jsp");
                %>
                
                <li><a style="font-weight: bold;font-size:17px;color: white;">Shop thời trang HL</a></li>
                <li><a href="view_qlhh.jsp" ><span class="glyphicon glyphicon-log-in"></span>Quản lý hàng hóa</a></li>                  
                <li><a href=""><span class="glyphicon glyphicon-shopping-cart"></span> Giỏ hàng<span class="badge"></span></a></li>

            </ul>
        </div>
    </div>
</nav>
