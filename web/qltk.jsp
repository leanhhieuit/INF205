<%-- 
    Document   : qltk
    Created on : Oct 23, 2017, 1:27:50 PM
    Author     : Admin
--%>

<%@page import="model.noithatDAO"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/…/3.3…/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/…/li…/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/…/bootstrap.min.js"></script>
        <script src="a.min.js" type="text/javascript"></script>
        <script src="b.min.js" type="text/javascript"></script>
        <link href="css/c.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý hàng hóa</title>
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

                <div class="w3-container w3-teal">
                    <form action="sanphamServlet" method="get">
                        <div><h2 style="float: left">Quản lý tài khoản</h2></div>
                    </form>
                </div>
                <div class="w3-container">
                    <div class="container form-group">
                        <form action="sanphamServlet" enctype="multipart/form-data" method="post" style="margin-top: 20px;">
                            <div class="col-sm-6">   
                                <div class="form-group">
                                    <label>Mã sản phẩm:</label>
                                    <input type="text" class="form-control" placeholder="Mời nhập mã sản phẩm" name="maSP" value="${PRODUCT.get(0)}">
                            </div>
                            <div class="form-group">
                                <label>Tên sản phẩm:</label>
                                <input type="text" class="form-control" placeholder="Mời nhập tên sản phẩm" name="name" value="${PRODUCT.get(1)}">
                            </div>
                            <div class="form-group">
                                <label>Loại sản phẩm:</label>
                                <input type="text" class="form-control" placeholder="Mời nhập loại sản phẩm" name="type" value="${PRODUCT.get(2)}">
                            </div>
                            <div class="form-group">
                                <label for="pwd">Nhà sản xuất:</label>
                                <input type="text" class="form-control" placeholder="Mời nhập nhà sản xuất" name="producer" value="${PRODUCT.get(3)}">
                            </div>
                            <div class="form-group">
                                <label for="pwd">Giá:</label>
                                <input type="number" class="form-control" placeholder="Mời nhập giá sản phẩm" name="price" value="${PRODUCT.get(4)}">
                            </div>
                            <div class="form-group">
                                <label for="pwd">Mô tả sản phẩm:</label>
                                <input type="text" class="form-control" placeholder="Mô tả sản phẩm" name="describe" value="${PRODUCT.get(5)}">
                            </div>
                            <button type="submit" class="btn btn-default" name="action" value="add">Add</button>
                            <button type="submit" class="btn btn-default" name="action" value="update">Update</button>
                        </div>
                    </form>
                    <div class="col-sm-6">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Tên tài khoản</th>
                                    <th>Password</th>
                                    <th>Tên nhân viên</th>
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
                                    <td><a href='<%="sanphamServlet?action=edit&maSP=" + t.get(0)%>'><span class="glyphicon glyphicon-pencil"></span></a>|
                                        <a href='<%="sanphamServlet?action=del&maSP=" + t.get(0)%>'><span class="glyphicon glyphicon-trash"></span></a>
                                    </td>
                                </tr>

                                <%}%>
                            </tbody>
                    </div>
                </div>
                </tbody>
                </table>
            </div>
        </div>

    </div>

</body>
</html>
