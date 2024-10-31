<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>History</title>
    <link rel="stylesheet" href="test3.css"> <!-- Link to the CSS file -->
</head>
<body>

    <header>
        <div class="logo">
            <!-- <img src="logo.png" alt="Logo">--> <!-- Placeholder for the logo -->
            <h1>HARMONI HOME</h1>
        </div>
        <nav>
            <a href="#">TRANG CHỦ</a>
            <a href="#">GIỚI THIỆU</a>
            <a href="#">SẢN PHẨM</a>
            <a href="#">LIÊN HỆ</a>
        </nav>
        <div class="header-icons">
            <a href="info.jsp"><img src="Images/user.png" alt="User"></a>
            <a href="order.jsp"><img src="Images/grocery-store.png" alt="Cart"></a>
            <a href="favo.jsp"><img src="Images/heart.png" alt="Heart"></a>
        </div>
    </header>

    <!-- Main Content -->
    <div class="main-content">
        <!-- Sidebar Menu -->
        <aside class="sidebar">
            <h2><img src="${pageContext.request.contextPath}/images/ava.jpg" alt="Avatar" class = "avatar"> phucphanthien</h2>
            <ul>
                <li><a href="info.jsp">Hồ sơ cá nhân</a></li>
                <li><a href="his.jsp">Đơn mua</a></li>
                <li><a href="voucher.jsp">Kho voucher</a></li>
            </ul>
        </aside>

        <!-- Order and Review Section -->
        <section class="order-review">
            <!-- Order Details -->
            <div class="order-details">
                <p>Mã đơn hàng: 0001</p>
                <p>Ngày đặt: 13/10/2023</p>
                <p class="order-status delivered">Đơn hàng đã được giao đến bạn</p>
                <div class="product-details">
                    <img src="https://assets.weimgs.com/weimgs/rk/images/wcm/products/202432/0023/harris-sofa-66-108-o.jpg" alt="Jasmin Sofa" class="product-image">
                    <div class="product-info">
                        <h3>Jasmin</h3>
                        <p>Màu sắc: Xám nhạt</p>
                        <p>Size: 200*R80*C85 cm</p>
                        <p>x1</p>
                    </div>
                    <div class="product-price">
                        <p class="old-price">11.000.000 VND</p>
                        <p class="new-price">10.850.000 VND</p>
                    </div>
                </div>
            </div>

            <!-- Review Section -->
            <div class="review-section">
                <h3>Đánh giá sản phẩm</h3>
                <div class="rating">
                    <span class="star">&#9733;</span>
                    <span class="star">&#9733;</span>
                    <span class="star">&#9733;</span>
                    <span class="star">&#9733;</span>
                    <span class="star">&#9734;</span>
                </div>
                <textarea class="review-comment" placeholder="Thêm đánh giá..."></textarea>
                <button class="btn-submit" onclick="window.location.href='his.jsp'">Gửi</button>
            </div>
        </section>
    </div>

</body>
</html>
