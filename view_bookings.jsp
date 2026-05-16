<%@ page import="java.util.List" %>
<%@ page import="com.photography.model.Booking" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Bookings - Photography System</title>
    <link rel="stylesheet" href="css/style.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
    <aside class="sidebar">
        <div class="logo"><i class='bx bx-camera'></i><span>PhotoBook</span></div>
        <ul class="nav-menu">
            <li class="nav-item"><a href="<%= request.getContextPath() %>/dashboard" class="nav-link"><i class='bx bx-home-alt'></i><span>Dashboard</span></a></li>
            <li class="nav-item"><a href="<%= request.getContextPath() %>/addBooking" class="nav-link"><i class='bx bx-plus-circle'></i><span>Add Booking</span></a></li>
            <li class="nav-item active"><a href="<%= request.getContextPath() %>/viewBookings" class="nav-link"><i class='bx bx-list-ul'></i><span>View Bookings</span></a></li>
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
                    <h1>All Bookings</h1>
                    <p>Manage your entire booking history</p>
                </div>
            </div>

            <div class="chart-card" style="margin-top: 20px;">
                <table class="data-table">
                    <thead>
                        <tr><th>Date</th><th>Category</th><th>Client</th><th style="text-align: right;">Amount</th></tr>
                    </thead>
                    <tbody>
                        <% 
                            List<Booking> bookings = (List<Booking>) request.getAttribute("bookings");
                            if (bookings != null) {
                                for (Booking b : bookings) {
                                    String iconClass = "bg-wedding";
                                    String icon = "bx-diamond";
                                    if ("Portrait".equals(b.getCategory())) { iconClass = "bg-portrait"; icon = "bx-user-circle"; }
                                    if ("Event".equals(b.getCategory())) { iconClass = "bg-event"; icon = "bx-party"; }
                                    if ("Product".equals(b.getCategory())) { iconClass = "bg-product"; icon = "bx-box"; }
                        %>
                        <tr>
                            <td><%= b.getDate() %></td>
                            <td>
                                <div class="category-badge">
                                    <div class="category-icon <%= iconClass %>"><i class='bx <%= icon %>'></i></div>
                                    <%= b.getCategory() %>
                                </div>
                            </td>
                            <td><%= b.getClientName() %></td>
                            <td style="text-align: right;" class="amount-income">₹ <%= b.getAmount() %></td>
                        </tr>
                        <% 
                                }
                            } 
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </main>
</body>
</html>
