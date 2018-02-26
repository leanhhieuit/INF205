<%-- 
    Document   : admin
    Created on : Oct 8, 2017, 5:07:52 PM
    Author     : Admin
--%>

<%@page import="java.util.Vector"%>
<%@page import="model.noithatDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <title>Quản lý hàng hóa
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="css/css.css" rel="stylesheet" type="text/css"/>
    <% noithatDAO ntDAO = new noithatDAO(); %>
    <body>
        <style>
            .abc{
                position: relative;
            }
            .abc .cham{
                transition: .5s ease;
            }
            .abc .img2{
                display: none;
                width: 200%;
                opacity: 0.8;
            }
            .abc .cba:hover>img{
                position: absolute;
                left: 1%;
                top: 1%;
                display: block;
                z-index: 1;
            }
        </style>
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
                        <h2 class="col-sm-6">Quản lý hàng hóa</h2>
                        <div class="col-sm-4"></div>
                        <div class="col-sm-2" style="margin-top: 15px">
                            <form action="noithatServlet">
                                <button type="submit" name="action" value="add_product">Thêm hàng hóa</button>    
                            </form>
                        </div>
                    </div>
                    <form action="NhanVienServlet" >
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
                            <td><%= t.get(2)%></td>
                            <td><%= t.get(3)%></td>
                            <td><%= t.get(4)%></td>
                            <td><%= t.get(5)%></td>
                            <td class="abc">
                                <div class="cba">
                                    <a class="glyphicon glyphicon-picture img-hv cham"></a>
                                    <img class="img2" src="img/<%= t.get(6)%>" alt=""/>
                                </div>
                            </td>
                            </div>
                            <td><a href='<%="sanphamServlet?action=edit&maSP=" + t.get(0)%>'><span class="glyphicon glyphicon-pencil"></span></a>|
                                <a href='<%="sanphamServlet?action=del&maSP=" + t.get(0)%>'><span class="glyphicon glyphicon-trash"></span></a>
                            </td>
                        </tr>

                        <%}%>
                    </tbody>
                </table>
                    </form>
            </div>   
    </body>
                    

</html>
