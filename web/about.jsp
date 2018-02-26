<%-- 
    Document   : about
    Created on : Oct 23, 2017, 1:36:34 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <html lang="en">
        <head>
            <!-- Theme Made By www.w3schools.com - No Copyright -->
            <title>Bootstrap Theme Simply Me</title>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
            <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
            <link href="css/css.css" rel="stylesheet" type="text/css"/>
        </head>
        <body>
        <body class="container-fluid">
            <jsp:include page="menu.jsp"></jsp:include>
                <!-- Navbar -->

                <!-- First Container -->
                <div class="container-fluid bg-1 text-center">
                    <h2 class="margin" style="font-weight: bold">Shop thời trang HL</h2>
                </div>

                <!-- Second Container -->
                <div class="container-fluid bg-2 text-center">
                    <p>Chúng tôi tin rằng mọi người đều có tổ ấm của riêng mình, một nơi để cảm nhận chính mình.
                        Một ngôi nhà phù hợp với cá tính của bạn và gia đình, tạo ra một không gian dễ chịu và thoải mái. 
                        Một nơi tách biệt với thế giới bên ngoài, một nơi để thể hiện cá tính và sở thích của chủ nhân ngôi nhà. 
                        Sự ấm áp sẽ lan tỏa đến mọi người, dù khả năng kinh tế như thế nào.
                        Đó là lý do tại sao chúng tôi muốn giúp bạn "Biến ngôi nhà thành tổ ấm".</p>
                </div>

                <!-- Third Container (Grid) -->
                <div class=" bg-3 text-center">    
                    <h3 class="margin" style="font-weight: bold">Tại sao bạn nên chọn HL shop?</h3><br>
                    <div class="row" style="margin-bottom: 30px;">
                        <div class="col-sm-4">
                            <img src="img/1.jpg" class="img-responsive margin" style="width: 100%; height: 280px"  alt="Image">
                            <h3>Sứ mệnh</h3>
                            <p>Mang đến cho quý khách hàng những ý tưởng thiết kế đầy sáng tạo, không chỉ phù hợp với môi trường Việt Nam mà còn cập nhật xu hướng thế giới. 
                                Cung cấp những giải pháp nhà ở đúng nhu cầu, thị hiếu và ngân sách của mỗi khách hàng. 
                                Không ngừng tìm tòi nghiên cứu, đầu tư phát triển, xây dựng đội ngũ nhân viên nhiệt huyết nhằm đem lại những trải nghiệm tuyệt với nhất cho khách hàng.</p>

                        </div>
                        <div class="col-sm-4" >
                            <img src="img/2.jpg" class="img-responsive margin" style="width: 100%"  alt="Image">
                            <h3>Tầm nhìn</h3>
                            <p>Tại HL shop, chúng tôi luôn đặt câu hỏi: Làm thế nào để cuộc sống của các gia đình Việt ngày một ấm cúng và tiện nghi? Bởi vậy, phương châm hàng đầu của HL shop chính là biến ngôi nhà thành tổ ấm. Cùng đội ngũ năng nổ và sáng tạo, chúng tôi thật vinh dự cho ra đời những ý tưởng thiết kế mới mẻ và các sản phẩm trang trí nội thất hiện đại, thiết thực.
                            </p>

                        </div>
                        <div class="col-sm-4" >
                            <img src="img/3.jpg" class="img-responsive margin" style="width: 100%; height: 280px" alt="Image">
                            <h3>Giá trị cốt lõi</h3>
                            <p>HL shop luôn trân trọng khách hàng và không ngừng cải tiến để mang đến những gì bạn cần. Có thể nói rằng, HL shop chúng tôi là một đại gia đình và mỗi khi đón nhận một khách hàng, chúng tôi như có thêm thành viên mới.</p>
                        </div>
                    </div>
                </div>
            <jsp:include page="footer.jsp"></jsp:include>
        </body>



    </body>
</html>
