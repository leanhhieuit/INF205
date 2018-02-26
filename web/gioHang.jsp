<%-- 
    Document   : gioHang
    Created on : Oct 20, 2017, 1:16:42 AM
    Author     : Admin
--%>

<%@page import="model.noithatDAO"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/css.css" rel="stylesheet" type="text/css"/>
        <title>Home</title>
    </head>
    <% noithatDAO ntDAO = new noithatDAO(); %>
    <body>
        <%
            if (session != null) {
                if (session.getAttribute("USERNAME2") != null) {
                } else {
                    response.sendRedirect("index.jsp");
                }
            }
        %>

        <jsp:include page="menu.jsp"></jsp:include>
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
            <div class="container-fluid">
                <h1 style="text-align: center">Giỏ hàng của ${USERNAME2}</h1>
            <div class="container">
                <div class="row">
                    <h2 class="col-sm-6">Sản phẩm đã thêm vào giỏ</h2>
                    <div class="col-sm-4"></div>
                    <div class="col-sm-2" style="margin-top: 15px">
                    </div>
                </div>
                <table class="table table-striped" style="min-height: 400px;">
                    <thead>
                        <tr>
                            <th>Mã sản phẩm</th>
                            <th>Tên sản phẩm</th>
                            <th>Loại sản phẩm</th>
                            <th>Nhà sản xuất</th>
                            <th>Giá</th>
                            <th>Số lượng</th>
                            <th>Mô tả</th>
                            <th>Hình ảnh</th>
                            <th>Chức năng</th>
                        </tr>

                    </thead>
                    <tbody>
                        
                        <%
                            for (int i = 0; i < ntDAO.getGioHang().size(); i++) {
                                Vector t = (Vector) ntDAO.getGioHang().get(i);
                        %>
                    <form action="sanphamServlet">
                        <tr>
                        <input type="text" name="code" hidden="" value="<%= t.get(0)%>"/>
                        <input type="text" name="tt" hidden="" value="<%= t.get(4)%>"/>
                        <td><%= t.get(0)%></td>
                        <td><%= t.get(1)%></td>
                        <td><%= t.get(2)%></td>
                        <td><%= t.get(3)%></td>
                        <td><%= t.get(4)%></td>
                        <td><input name="qtt" type="number" value="<%= t.get(5)%>" style="width: 60px;" /></td>
                        <td><%= t.get(6)%></td>
                        <td class="abc">
                            <div class="cba">
                                <a class="glyphicon glyphicon-picture img-hv cham"></a>
                                <img class="img2" src="img/<%= t.get(7)%>" alt=""/>
                            </div>
                        </td>
                        <td><button type="submit" name="action" value="updateGioHang">Sửa</button>|<a href='<%="sanphamServlet?action=delGioHang&maSP=" + t.get(0)%>'><span class="glyphicon glyphicon-trash"></span></a>
                        </td>
                        </tr>
                    </form>
                    <%}%>

                    </tbody>
                </table>
                <style>
                    .acb {
                        text-align: center;
                    }
                </style>
                <div class="row acb">
                    <form action="sanphamServlet">
                    <p class="col-sm-2">Loại hàng:<%= ntDAO.getGioHang().size() %></p>
                    <p class="col-sm-2">Tổng tiền:${TONGTIEN}</p> 
                    <input class="col-sm-2" type="number" placeholder="Thanh toán"/>
                    <p class="col-sm-2">Còn nợ:</p>
                    <p class="col-sm-2">Số dư:</p>
                    <button type="submit" class="w3-button w3-indigo col-sm-2" name="action" style=" width: 120px; margin-top: -10px;">Thanh toán</button>
                    </form>
                </div>


            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
