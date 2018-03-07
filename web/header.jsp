<%-- 
    Document   : header
    Created on : Oct 1, 2017, 10:37:30 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="container-fluid">
    <div class="img-head">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                <!-- Wrapper for slides -->
                <div class="carousel-inner">

                    <div class="item active">
                        <img src="img/1.jpg" alt="Los Angeles" style="width:100%;">
                        <div class="carousel-caption">
                            <h3>Áo sơ mi</h3>
                            <p>Phong cách thời thượng</p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="img/2.jpg" alt="Chicago" style="width:100%;">
                        <div class="carousel-caption">
                            <h3>Váy</h3>
                            <p>Giản dị thoải mái</p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="img/3.jpg" alt="New York" style="width:100%;">
                        <div class="carousel-caption">
                            <h3>Quần jean</h3>
                            <p>Tuổi trẻ phá cách</p>
                        </div>
                    </div>

                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
        </div>
        <div style="width: 50%;text-align: center; color: orange;" class="title-head">
            <p style="font-size: 40px; font-weight: bold">
                CỬA HÀNG THỜI TRANG HL
            </p>
            <p style="font-size: 25px;">Cung cấp những sảm phẩm tốt nhất, đẹp nhất và sang trọng nhất</p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3 about-info">
            <img src="img/1.jpg" alt="" style="width: 100%; height: 190px;"/>
            <h4>Áo sơ mi</h4>
        </div>
        <div class="col-md-3 about-info">
            <img src="img/2.jpg" alt="" style="width: 100%;height: 190px;"/>
            <h4>Váy ngắn</h4>                   
        </div>
        <div class="col-md-3 about-info">
            <img src="img/3.jpg" alt="" style="width: 100%; height: 190px;"/>
            <h4>Áo khoác</h4>
        </div>
        <div class="col-md-3 about-info">
            <img src="img/4.jpg" alt="" style="width: 100%; height: 190px;"/>
            <h4>Đầm</h4>
        </div>
        
    </div>
    <div class="col-sm-12" style="height: 2px; background-color: lightblue; margin-top: 20px; margin-bottom:10px;    "></div>
    <h2 style="font-weight: bold">Trang phục theo những phong cách khác nhau:</h2>
    <div class="row">
        <div class="col-md-3 about-info">
            <img src="img/pc1.jpg" alt="" style="width: 100%; height: 190px;"/>
            <h4>Phong cách quý phái</h4>
        </div>
        <div class="col-md-3 about-info">
            <img src="img/pc2.jpg" alt="" style="width: 100%;height: 190px;"/>
            <h4>Phong cách nóng bỏng</h4>                   
        </div>
        <div class="col-md-3 about-info">
            <img src="img/pc3.jpg" alt="" style="width: 100%; height: 190px;"/>
            <h4>Phong cách giản dị</h4>
        </div>
        <div class="col-md-3 about-info">
            <img src="img/pc4.jpg" alt="" style="width: 100%; height: 190px;"/>
            <h4>Phong cách ấm áp</h4>
        </div>
    </div>
</div>