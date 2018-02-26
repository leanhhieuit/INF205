<%-- 
    Document   : product
    Created on : Oct 23, 2017, 2:14:41 PM
    Author     : Admin
--%>

<%@page import="java.util.Vector"%>
<%@page import="model.noithatDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/css.css" rel="stylesheet" type="text/css"/>
        <script src="a.min.js" type="text/javascript"></script>
        <title>Product</title>
    </head>
    <style>
        .homeproduct{
            position: relative;
        }
        .image{
            z-index: 1;
            transition: .5s ease;
        }
        .image:hover{
            opacity: 0.1;
        }
        .middle{
            position: absolute;
            left: 5%;
            top: 5%;
            z-index: -1;
        }
        .middle p{
            font-size: 12px;
        }
    </style>
    <% noithatDAO ntd = new noithatDAO();%>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <div class="container-fluid row">
                <h2>Tất cả mặt hàng</h2>

                <div class="container1">
                <%
                    for (int i = 0; i < ntd.getAllList().size(); i++) {
                        Vector t = (Vector) ntd.getAllList().get(i);
                %>
                <form action="sanphamServlet" class="col-sm-3" style="margin-bottom: 50px">
                    <div class="homeproduct" style="position: relative">
                        <input name="soluong" type="number" placeholder="Nhập số lượng" style="position: absolute;bottom: -35px;right: 180px; width: 127px; height: 33px; border-radius: 5px;  "/>
                        <button type="submit" name="action" value="addGioHang" class="btn btn-default" style="position: absolute;bottom: -35px;right: 0px;">Thêm vào giỏ</button>
                        <img src="img/<%= t.get(6)%>" alt="Avatar" class="image" style="width:308px;height: 240px; ">
                        <div class="middle">
                            <input type="text" name="masanpham" value="<%= t.get(0)%>" hidden="true"/>
                            <p>Mã: <%= t.get(0)%></p>
                            <p>Tên: <%= t.get(1)%></p>
                            <p>Loại: <%= t.get(2)%></p>
                            <p>NSX: <%= t.get(3)%></p>
                            <p>Giá: <%= t.get(4)%></p>
                            <p>Mô tả: <%= t.get(5)%></p>
                        </div>
                        
                    </div>
                </form>

                <%}%>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
