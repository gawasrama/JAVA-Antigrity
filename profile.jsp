<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile - Photography System</title>
    <link rel="stylesheet" href="css/style.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <style>
        .profile-container { display: flex; gap: 32px; margin-top: 24px; }
        .profile-sidebar { width: 300px; background: white; border-radius: 16px; padding: 32px; text-align: center; border: 1px solid var(--border-color); box-shadow: 0 1px 3px rgba(0,0,0,0.05); }
        .profile-main { flex: 1; background: white; border-radius: 16px; padding: 32px; border: 1px solid var(--border-color); box-shadow: 0 1px 3px rgba(0,0,0,0.05); }
        .profile-pic { width: 120px; height: 120px; border-radius: 50%; object-fit: cover; margin-bottom: 16px; border: 4px solid var(--blue-light); }
        .profile-name { font-size: 20px; font-weight: 700; margin-bottom: 4px; }
        .profile-role { color: var(--text-muted); font-size: 14px; margin-bottom: 24px; }
        .btn-upload { background: var(--blue-light); color: var(--blue-dark); border: none; padding: 8px 16px; border-radius: 8px; font-weight: 600; cursor: pointer; width: 100%; margin-bottom: 8px; }
        
        .form-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 20px; margin-bottom: 24px; }
        .form-group { text-align: left; }
        .form-group label { display: block; margin-bottom: 8px; font-weight: 500; font-size: 14px; color: var(--text-main); }
        .form-group input, .form-group textarea { width: 100%; padding: 12px; border: 1px solid var(--border-color); border-radius: 8px; font-size: 14px; }
        .form-group textarea { resize: vertical; height: 100px; }
        
        .section-title { font-size: 18px; font-weight: 600; margin-bottom: 20px; padding-bottom: 12px; border-bottom: 1px solid var(--border-color); }
        .btn-save { background: var(--primary-color); color: white; border: none; padding: 12px 32px; border-radius: 8px; font-weight: 600; cursor: pointer; }
    </style>
</head>
<body>
    <aside class="sidebar">
        <div class="logo"><i class='bx bx-camera'></i><span>PhotoBook</span></div>
        <ul class="nav-menu">
            <li class="nav-item"><a href="<%= request.getContextPath() %>/dashboard" class="nav-link"><i class='bx bx-home-alt'></i><span>Dashboard</span></a></li>
            <li class="nav-item"><a href="<%= request.getContextPath() %>/addBooking" class="nav-link"><i class='bx bx-plus-circle'></i><span>Add Booking</span></a></li>
            <li class="nav-item"><a href="<%= request.getContextPath() %>/viewBookings" class="nav-link"><i class='bx bx-list-ul'></i><span>View Bookings</span></a></li>
            <li class="nav-item"><a href="<%= request.getContextPath() %>/packages.jsp" class="nav-link"><i class='bx bx-category'></i><span>Packages</span></a></li>
            <li class="nav-item"><a href="<%= request.getContextPath() %>/reports.jsp" class="nav-link"><i class='bx bx-bar-chart-alt-2'></i><span>Reports</span></a></li>
            <li class="nav-item"><a href="<%= request.getContextPath() %>/earnings.jsp" class="nav-link"><i class='bx bx-wallet'></i><span>Earnings</span></a></li>
            <li class="nav-item active"><a href="<%= request.getContextPath() %>/profile.jsp" class="nav-link"><i class='bx bx-user'></i><span>Profile</span></a></li>
            <li class="nav-item"><a href="<%= request.getContextPath() %>/logout" class="nav-link"><i class='bx bx-log-out'></i><span>Logout</span></a></li>
        </ul>
    </aside>

    <main class="main-content">
        <header class="topbar">
            <div class="topbar-left"><i class='bx bx-menu menu-toggle'></i></div>
        </header>

        <div class="dashboard-container">
            <div class="page-header">
                <div class="page-title">
                    <h1>Profile Settings</h1>
                    <p>Manage your account and studio details</p>
                </div>
            </div>

            <div class="profile-container">
                <div class="profile-sidebar">
                    <img src="https://ui-avatars.com/api/?name=John+Doe&background=random&size=200" alt="Profile" class="profile-pic">
                    <div class="profile-name">John Doe</div>
                    <div class="profile-role">Lead Photographer</div>
                    <button class="btn-upload">Change Picture</button>
                    <button class="btn-upload" style="background:transparent; border:1px solid #ef4444; color:#ef4444;">Remove</button>
                </div>

                <div class="profile-main">
                    <h2 class="section-title">Personal Information</h2>
                    <form>
                        <div class="form-grid">
                            <div class="form-group"><label>First Name</label><input type="text" value="John"></div>
                            <div class="form-group"><label>Last Name</label><input type="text" value="Doe"></div>
                            <div class="form-group"><label>Email Address</label><input type="email" value="john.doe@photobook.com"></div>
                            <div class="form-group"><label>Phone Number</label><input type="tel" value="+91 9876543210"></div>
                        </div>

                        <h2 class="section-title" style="margin-top:16px;">Studio Details</h2>
                        <div class="form-group" style="margin-bottom:20px;">
                            <label>Studio Name</label>
                            <input type="text" value="JD Photography Studio">
                        </div>
                        <div class="form-group" style="margin-bottom:24px;">
                            <label>Studio Address</label>
                            <textarea>123 Creative Hub, MG Road, Mumbai, Maharashtra 400001</textarea>
                        </div>

                        <div style="text-align:right;">
                            <button type="button" class="btn-save">Save Changes</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </main>
</body>
</html>
