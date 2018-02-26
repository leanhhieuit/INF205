<%-- 
    Document   : kho
    Created on : Oct 23, 2017, 1:17:40 PM
    Author     : Admin
--%>

<%@page import="model.noithatDAO"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="css/css.css" rel="stylesheet" type="text/css"/>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kho hàng</title>
    </head>
    <% noithatDAO ntDAO = new noithatDAO(); %>
    <body>
        <%
            if (session != null) {
                if (session.getAttribute("USERNAME") == null) {
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
            }
        %>
        <jsp:include page="admin_menu.jsp"></jsp:include>
            <div style="margin-left:15%">
                <div class="container">
                    <div class="row">
                        <h2 class="col-sm-6">Quản lý kho</h2>
                        <div class="col-sm-4"></div>
                        <div class="col-sm-2" style="margin-top: 15px; float: right">
                            <form action="noithatServlet">
                                <button class="w3-button w3-indigo" type="submit" name="action" value="nhapkho">Nhập kho</button>    
                            </form>
                        </div>
                        </div>
                    </div>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Mã sản phẩm</th>
                                <th>Tên sản phẩm</th>
                                <th>Số lượng</th>
                                <th>Ngày nhập</th>
                                <th>Giá</th>
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
                            <td><%= t.get(2)%></td>
                            <td><%= t.get(3)%></td>
                            <td><%= t.get(4)%></td>
                            <td><%= t.get(5)%></td>
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
