<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Packages - Photography System</title>
    <link rel="stylesheet" href="css/style.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <style>
        .packages-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 24px;
            margin-top: 24px;
        }
        .package-card {
            background: white;
            border-radius: 16px;
            padding: 32px 24px;
            box-shadow: 0 1px 3px rgba(0,0,0,0.05);
            border: 1px solid var(--border-color);
            position: relative;
            text-align: center;
        }
        .package-icon {
            width: 64px;
            height: 64px;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 28px;
            margin: 0 auto 16px;
        }
        .package-title { font-size: 18px; font-weight: 600; margin-bottom: 8px; }
        .package-price { font-size: 28px; font-weight: 700; color: var(--primary-color); margin-bottom: 24px; }
        .package-price span { font-size: 14px; font-weight: 500; color: var(--text-muted); }
        .package-features { list-style: none; text-align: left; margin-bottom: 24px; }
        .package-features li { display: flex; align-items: center; gap: 8px; margin-bottom: 12px; font-size: 14px; color: var(--text-main); }
        .package-features li i { color: var(--green-dark); font-size: 18px; }
        .btn-edit {
            background-color: var(--blue-light); color: var(--blue-dark); border: none; padding: 10px 16px; border-radius: 8px; font-weight: 600; cursor: pointer; width: 100%; transition: all 0.2s;
        }
        .btn-edit:hover { background-color: var(--blue-dark); color: white; }
    </style>
</head>
<body>
    <aside class="sidebar">
        <div class="logo"><i class='bx bx-camera'></i><span>PhotoBook</span></div>
        <ul class="nav-menu">
            <li class="nav-item"><a href="<%= request.getContextPath() %>/dashboard" class="nav-link"><i class='bx bx-home-alt'></i><span>Dashboard</span></a></li>
            <li class="nav-item"><a href="<%= request.getContextPath() %>/addBooking" class="nav-link"><i class='bx bx-plus-circle'></i><span>Add Booking</span></a></li>
            <li class="nav-item"><a href="<%= request.getContextPath() %>/viewBookings" class="nav-link"><i class='bx bx-list-ul'></i><span>View Bookings</span></a></li>
            <li class="nav-item active"><a href="<%= request.getContextPath() %>/packages.jsp" class="nav-link"><i class='bx bx-category'></i><span>Packages</span></a></li>
            <li class="nav-item"><a href="<%= request.getContextPath() %>/reports.jsp" class="nav-link"><i class='bx bx-bar-chart-alt-2'></i><span>Reports</span></a></li>
            <li class="nav-item"><a href="<%= request.getContextPath() %>/earnings.jsp" class="nav-link"><i class='bx bx-wallet'></i><span>Earnings</span></a></li>
            <li class="nav-item"><a href="<%= request.getContextPath() %>/profile.jsp" class="nav-link"><i class='bx bx-user'></i><span>Profile</span></a></li>
            <li class="nav-item"><a href="<%= request.getContextPath() %>/logout" class="nav-link"><i class='bx bx-log-out'></i><span>Logout</span></a></li>
        </ul>
    </aside>

    <main class="main-content">
        <header class="topbar">
            <div class="topbar-left"><i class='bx bx-menu menu-toggle'></i></div>
        </header>

        <div class="dashboard-container">
            <div class="page-header" style="display:flex; justify-content:space-between; align-items:flex-end;">
                <div class="page-title">
                    <h1>Manage Packages</h1>
                    <p>Setup photography packages and pricing</p>
                </div>
                <button class="btn-edit" style="width:auto; padding:12px 24px; background:var(--primary-color); color:white;">+ Add New Package</button>
            </div>

            <div class="packages-grid">
                <!-- Package 1 -->
                <div class="package-card">
                    <div class="package-icon" style="background:var(--blue-light); color:var(--blue-dark);"><i class='bx bx-diamond'></i></div>
                    <div class="package-title">Wedding Pro</div>
                    <div class="package-price">₹1,50,000<span> / event</span></div>
                    <ul class="package-features">
                        <li><i class='bx bx-check-circle'></i> Full day coverage (12 hrs)</li>
                        <li><i class='bx bx-check-circle'></i> 2 Lead Photographers</li>
                        <li><i class='bx bx-check-circle'></i> 1 Cinematic Videographer</li>
                        <li><i class='bx bx-check-circle'></i> Premium Photo Album</li>
                        <li><i class='bx bx-check-circle'></i> Drone Shots included</li>
                    </ul>
                    <button class="btn-edit">Edit Package</button>
                </div>

                <!-- Package 2 -->
                <div class="package-card">
                    <div class="package-icon" style="background:var(--orange-light); color:var(--orange-dark);"><i class='bx bx-party'></i></div>
                    <div class="package-title">Pre-Wedding</div>
                    <div class="package-price">₹65,000<span> / shoot</span></div>
                    <ul class="package-features">
                        <li><i class='bx bx-check-circle'></i> 1 Day Outdoor Shoot</li>
                        <li><i class='bx bx-check-circle'></i> 1 Lead Photographer</li>
                        <li><i class='bx bx-check-circle'></i> Cinematic Teaser Video</li>
                        <li><i class='bx bx-check-circle'></i> 3 Outfit Changes</li>
                        <li><i class='bx bx-check-circle'></i> 30 Retouched Photos</li>
                    </ul>
                    <button class="btn-edit">Edit Package</button>
                </div>

                <!-- Package 3 -->
                <div class="package-card">
                    <div class="package-icon" style="background:var(--green-light); color:var(--green-dark);"><i class='bx bx-user-circle'></i></div>
                    <div class="package-title">Portrait Session</div>
                    <div class="package-price">₹15,000<span> / session</span></div>
                    <ul class="package-features">
                        <li><i class='bx bx-check-circle'></i> 2 Hour Studio Session</li>
                        <li><i class='bx bx-check-circle'></i> Professional Lighting</li>
                        <li><i class='bx bx-check-circle'></i> 2 Outfit Changes</li>
                        <li><i class='bx bx-check-circle'></i> 15 Retouched Photos</li>
                        <li><i class='bx bx-check-circle'></i> Digital Gallery Delivery</li>
                    </ul>
                    <button class="btn-edit">Edit Package</button>
                </div>

                <!-- Package 4 -->
                <div class="package-card">
                    <div class="package-icon" style="background:var(--purple-light); color:var(--purple-dark);"><i class='bx bx-box'></i></div>
                    <div class="package-title">Product Catalog</div>
                    <div class="package-price">₹12,000<span> / half day</span></div>
                    <ul class="package-features">
                        <li><i class='bx bx-check-circle'></i> Up to 50 Products</li>
                        <li><i class='bx bx-check-circle'></i> Pure White Background</li>
                        <li><i class='bx bx-check-circle'></i> High-Res for E-commerce</li>
                        <li><i class='bx bx-check-circle'></i> Basic Color Correction</li>
                        <li><i class='bx bx-check-circle'></i> Commercial Usage Rights</li>
                    </ul>
                    <button class="btn-edit">Edit Package</button>
                </div>
            </div>
        </div>
    </main>
</body>
</html>
