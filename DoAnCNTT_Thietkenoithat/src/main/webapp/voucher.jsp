<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Voucher</title>
    <link rel="stylesheet" href="test3.css"> <!-- Link to the CSS file -->
</head>
<body>
	<!-- Header with navigation bar -->
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

        <!-- Voucher Section -->
        <section class="voucher-section">
            <!-- Search Bar -->
            <div class="search-bar">
                <input type="text" placeholder="Tìm kiếm voucher">
            </div>

            <!-- Voucher Cards -->
            <div class="voucher-list">
                <div class="voucher-card">
                    <div class="discount">
                        <p>10%</p>
                        <p>SALEOFF</p>
                    </div>
                    <div class="voucher-info">
                        <p>Mã GIẢM GIÁ 1</p>
                        <p>Số lượng: 100</p>
                        <p>13/10/2024 đến 13/12/2024</p>
                        <p>(*) Áp dụng với đơn hàng trên 500.000 VND</p>
                    </div>
                    <button class="btn-apply">ÁP DỤNG</button>
                </div>

                <div class="voucher-card">
                    <div class="discount">
                        <p>20%</p>
                        <p>SALEOFF</p>
                    </div>
                    <div class="voucher-info">
                        <p>Mã GIẢM GIÁ 3</p>
                        <p>Số lượng: 50</p>
                        <p>13/10/2024 đến 13/12/2024</p>
                        <p>(*) Áp dụng với đơn hàng trên 2.000.000 VND</p>
                    </div>
                    <button class="btn-apply">ÁP DỤNG</button>
                </div>
            </div>
        </section>
    </div>
   	
   	
</body>
</html>