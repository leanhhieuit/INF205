<%-- 
    Document   : view_qlhh
    Created on : Oct 19, 2017, 8:16:38 PM
    Author     : Admin
--%>

<%@page import="java.util.Vector"%>
<%@page import="model.noithatDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/…/3.3…/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/…/li…/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/…/bootstrap.min.js"></script>
    <script src="a.min.js" type="text/javascript"></script>
    <script src="b.min.js" type="text/javascript"></script>
    <link href="css/c.min.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý hàng hóa</title>
    </head>
    <% noithatDAO ntDAO = new noithatDAO(); %>
    <body>
        <jsp:include page="admin_menu.jsp"></jsp:include>
            <div style="margin-left:15%">
                <div class="container">
                    <div class="row">
                        <h2 class="col-sm-6">Quản lý hàng hóa</h2>
                        <div class="col-sm-4"></div>
                        <div class="col-sm-2" style="margin-top: 15px">
                            <form action="noithatServlet">
                                <button type="submit" name="action" value="add_product">Thêm hàng hóa</button>    
                            </form>
                        </div>
                    </div>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Mã sản phẩm</th>
                                <th>Tên sản phẩm</th>
                                <th>Loại sản phẩm</th>
                                <th>Nhà sản xuất</th>
                                <th>Giá nhập</th>
                                <th>Giá bán</th>
                                <th>Thuế</th>
                                <th>Mô tả</th>
                                <th>Chức năng</th>
                            </tr>

                        </thead>
                        <tbody>
                        <%
                            for (int i = 0; i < ntDAO.getAllList().size(); i++) {
                                Vector t = (Vector) ntDAO.getAllList().get(i);
                        %>
                        <tr>
                            <td><%= t.get(0)%></td>
                            <td><%= t.get(1)%></td>
                            <td><%= t.get(7)%></td>
                            <td><%= t.get(2)%></td>
                            <td><%= t.get(3)%></td>
                            <td><%= t.get(4)%></td>
                            <td><%= t.get(5)%></td>
                            <td><%= t.get(6)%></td>
                            </div>
                            <td><a href='<%="sanphamServlet?action=edit&maSP=" + t.get(0)%>'><span class="glyphicon glyphicon-pencil"></span></a>|
                                <a href='<%="sanphamServlet?action=del&maSP=" + t.get(0)%>'><span class="glyphicon glyphicon-trash"></span></a>
                            </td>
                        </tr>
                        <%}%>
                    </tbody>
                </table>
            </div>   
    </body>
</html>
