<%-- 
    Document   : admin
    Created on : Oct 1, 2017, 8:42:10 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="java.util.Vector"%>
<%@page import="model.noithatDAO"%>
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
    <body>
        <jsp:include page="admin_menu.jsp"></jsp:include>
            <div style="margin-left:15%">

                <div class="w3-container w3-teal">
                    <form action="sanphamServlet" method="get">
                        <div><h2 style="float: left">Thêm hàng hóa</h2></div>
                    </form>
                </div>

                <div class="w3-container">
                    <div class="container form-group">
                        <form method="get" action="sanphamServlet" enctype="multipart/form-data" style="margin-top: 20px;">
                            <div class="col-sm-11">   
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
                                <input type="text" class="form-control" placeholder="Mời nhập loại sản phẩm" name="type" value="${PRODUCT.get(7)}">
                            </div>
                            <div class="form-group">
                                <label for="pwd">Nhà sản xuất:</label>
                                <input type="text" class="form-control" placeholder="Mời nhập nhà sản xuất" name="producer" value="${PRODUCT.get(2)}">
                            </div>   
                            <div class="form-group">
                                <label for="pwd">Giá nhập:</label>
                                <input type="number" class="form-control" placeholder="Mời nhập giá nhập sản phẩm" name="price1" value="${PRODUCT.get(3)}">
                            </div>
                            <div class="form-group">
                                <label for="pwd">Giá bán:</label>
                                <input type="number" class="form-control" placeholder="Mời nhập giá bán sản phẩm" name="price2" value="${PRODUCT.get(4)}">
                            </div>
                            <div class="form-group">
                                <label for="pwd">Thuế:</label>
                                <input type="text" class="form-control" placeholder="Mời nhập thuế cho sản phẩm" name="thue" value="${PRODUCT.get(5)}">
                            </div>
                            <div class="form-group">
                                <label for="pwd">Mô tả sản phẩm:</label>
                                <input type="text" class="form-control" placeholder="Mô tả sản phẩm" name="describe" value="${PRODUCT.get(6)}">
                            </div>
                            <button type="submit" class="btn btn-default" name="action" value="add">Add</button>
                            <button type="submit" class="btn btn-default" name="action" value="update">Update</button>
                        </div>
                    </form>

                    </tbody>
                    </table>
                </div>
            </div>

        </div>
        <script>
            function uploadimg(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function (e) {
                        document.getElementById('hienThiAnh').src = e.target.result;
                    }

                    reader.readAsDataURL(input.files[0]);
                }
            }
        </script>
    </body>
</html>
