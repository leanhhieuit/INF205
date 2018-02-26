<%-- 
    Document   : nhapkho
    Created on : Oct 23, 2017, 1:24:01 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <title>Phiếu nhập</title>
    </head>
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
                        <div><h2 style="float: left">Tạo phiếu nhập</h2></div>
                    </form>
                </div>

                <div class="w3-container">
                    <div class="container form-group">
                        <form action="khoServlet" method="post" style="margin-top: 20px;">
                            <div class="col-sm-6">   
                                <div class="form-group">
                                    <label>Mã sản phẩm:</label>
                                    <select id="" name="maSP" class="form-control">
                                    <c:forEach items="${LIST_MASANPHAM}" var="masanpham">
                                        <option value="${masanpham.maSP}"></option>
                                    </c:forEach>
                                    </select>                                                     
                                <div class="form-group">
                                    <label for="pwd">Số lượng:</label>
                                    <input type="number" class="form-control" placeholder="Mời nhập số lượng sản phẩm" name="quantity" value="${PRODUCT.get(1)}">
                                </div>
                                <div class="form-group">
                                    <label for="pwd">Ngày nhập</label>
                                    <fmt:formatDate var="publishday" pattern="dd/MM/yyyy" value="${PRODUCT.publishday}"/>
                                    <input type="date" class="form-control" placeholder="Enter Publishday:" name="publishday" value="${SANPHAM.publishday}">
                                </div>
                                <button type="submit" class="btn btn-default" name="action" value="add">Add</button>
                                <button type="submit" class="btn btn-default" name="action" value="update">Update</button>
                            </div>
                    </form>
                </div>
            </div>
        </tbody>
    </table>
</div>
</div>

</div>

</body>
</html>
