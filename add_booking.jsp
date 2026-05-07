<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Booking - Photography System</title>
    <link rel="stylesheet" href="css/style.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <style>
        .form-container {
            background-color: white;
            border-radius: 16px;
            padding: 32px;
            box-shadow: 0 1px 3px rgba(0,0,0,0.05);
            border: 1px solid var(--border-color);
            max-width: 600px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
            font-size: 14px;
        }
        .form-group input, .form-group select {
            width: 100%;
            padding: 12px;
            border: 1px solid var(--border-color);
            border-radius: 8px;
            font-size: 14px;
        }
        .btn-submit {
            background-color: var(--blue-dark);
            color: white;
            border: none;
            padding: 12px 24px;
            border-radius: 8px;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            width: 100%;
        }
        .btn-submit:hover {
            background-color: #1d4ed8;
        }
    </style>
</head>
<body>

    <!-- Sidebar -->
    <aside class="sidebar">
        <div class="logo">
            <i class='bx bx-camera'></i>
            <span>PhotoBook</span>
        </div>
        <ul class="nav-menu">
            <li class="nav-item"><a href="<%= request.getContextPath() %>/dashboard" class="nav-link"><i class='bx bx-home-alt'></i><span>Dashboard</span></a></li>
            <li class="nav-item active"><a href="<%= request.getContextPath() %>/addBooking" class="nav-link"><i class='bx bx-plus-circle'></i><span>Add Booking</span></a></li>
            <li class="nav-item"><a href="<%= request.getContextPath() %>/viewBookings" class="nav-link"><i class='bx bx-list-ul'></i><span>View Bookings</span></a></li>
            <li class="nav-item"><a href="<%= request.getContextPath() %>/packages.jsp" class="nav-link"><i class='bx bx-category'></i><span>Packages</span></a></li>
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
            <div class="page-header">
                <div class="page-title">
                    <h1>Add New Booking</h1>
                    <p>Enter client details and package</p>
                </div>
            </div>

            <div class="form-container">
                <% if(request.getAttribute("error") != null) { %>
                    <div style="color: red; margin-bottom: 15px;"><%= request.getAttribute("error") %></div>
                <% } %>
                <form action="<%= request.getContextPath() %>/addBooking" method="POST">
                    <div class="form-group">
                        <label for="clientName">Client Name</label>
                        <input type="text" id="clientName" name="clientName" required>
                    </div>
                    <div class="form-group">
                        <label for="category">Category</label>
                        <select id="category" name="category" required>
                            <option value="Wedding">Wedding</option>
                            <option value="Portrait">Portrait</option>
                            <option value="Event">Event</option>
                            <option value="Product">Product</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="date">Date</label>
                        <input type="date" id="date" name="date" required>
                    </div>
                    <div class="form-group">
                        <label for="amount">Amount (₹)</label>
                        <input type="number" id="amount" name="amount" min="0" step="0.01" required>
                    </div>
                    <button type="submit" class="btn-submit">Save Booking</button>
                </form>
            </div>
        </div>
    </main>
</body>
</html>
