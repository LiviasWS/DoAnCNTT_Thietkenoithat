<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <link rel="stylesheet" href="test.css"> <!-- Link to the CSS file -->
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

    <!-- Main container -->
    <div class="container">
        <!-- Sidebar -->
        <aside>
            <div class="profile-image">
                <img src="${pageContext.request.contextPath}/images/ava.jpg" alt="Profile Photo"> <!-- Placeholder for profile photo -->
            </div>
            <div class="profile-info">
            	<button></button>
                <h2>phucphanthien</h2>
                <p>customer</p>
            </div>
            <div class="profile-other">
            	<ul>
                	<li><a href="his.jsp">Đơn hàng của tôi</a></li>
                	<li><a href="favo.jsp">Yêu thích</a></li>
                	<li><a href="voucher.jsp">Voucher</a></li>
            	</ul>
        </div>
        </aside>

        <!-- Profile content -->
        <section class="profile">
            <div class="profile-header">
                <h2>HỒ SƠ CỦA TÔI</h2>
            </div>
            <div class="profile-details">
                <div class="form-section">
                <form action="submitForm" method="post">
                    <div class="form-group row">
    					<div class="col">
        					<label for="name">Họ và tên</label>
        					<textarea id="name" name="name" placeholder="Nhập họ tên"></textarea>
    					</div>
    					<div class="col">
        					<label for="phone">Số điện thoại</label>
        					<textarea id="phone" name="phone" placeholder="Nhập số điện thoại"></textarea>
    					</div>
					</div>
                    
                    
                    <div class="form-group row">
						<div class="col">
        					<label for="email">Email</label>
        					<textarea id="email" name="email" placeholder="Nhập email"></textarea>
    					</div>
                    	<div class="col">
                        	<label for="sex">Giới tính</label>
                        	<select id="sex" name="city">
                            	<option value="">Chọn giới tính</option>
                            	<!-- Options for cities -->
                        	</select>
                    	</div>
                    </div>
				<div class="form-group row">
				<div class="col">
                        	<label for="address">Địa chỉ</label>
                        	<textarea id="address" name="address" placeholder="Nhập địa chỉ"></textarea>
                    	</div>
				</div>
				
				
                </form>
            </div>
            </div>

            <div class="profile-buttons">
                <button>Cập nhật</button>
            </div>
        </section>
    </div>
</body>

</html>
