<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Earnings - Photography System</title>
    <link rel="stylesheet" href="css/style.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <style>
        .finance-card { background: white; border-radius: 16px; padding: 24px; border: 1px solid var(--border-color); box-shadow: 0 1px 3px rgba(0,0,0,0.05); }
        .finance-val { font-size: 32px; font-weight: 700; margin: 12px 0 4px; }
        .finance-label { color: var(--text-muted); font-size: 14px; font-weight: 500; }
        .status-badge { padding: 4px 10px; border-radius: 20px; font-size: 12px; font-weight: 600; }
        .status-paid { background: var(--green-light); color: var(--green-dark); }
        .status-pending { background: var(--orange-light); color: var(--orange-dark); }
        .btn-withdraw { background: var(--green-dark); color: white; border: none; padding: 12px 24px; border-radius: 8px; font-weight: 600; cursor: pointer; }
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
            <li class="nav-item active"><a href="<%= request.getContextPath() %>/earnings.jsp" class="nav-link"><i class='bx bx-wallet'></i><span>Earnings</span></a></li>
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
                    <h1>Earnings & Payouts</h1>
                    <p>Track your financial growth</p>
                </div>
                <button class="btn-withdraw">Withdraw Funds</button>
            </div>

            <div style="display:grid; grid-template-columns: repeat(3, 1fr); gap:24px; margin-bottom:24px;">
                <div class="finance-card">
                    <div class="finance-label">Available Balance</div>
                    <div class="finance-val" style="color:var(--text-main);">₹ 1,25,000</div>
                    <div style="color:var(--text-muted); font-size:13px;"><i class='bx bx-info-circle'></i> Ready for withdrawal</div>
                </div>
                <div class="finance-card">
                    <div class="finance-label">Pending Clearances</div>
                    <div class="finance-val" style="color:var(--orange-dark);">₹ 45,000</div>
                    <div style="color:var(--text-muted); font-size:13px;"><i class='bx bx-time'></i> Clears in 2-3 days</div>
                </div>
                <div class="finance-card">
                    <div class="finance-label">Total Lifetime Earnings</div>
                    <div class="finance-val" style="color:var(--blue-dark);">₹ 28,50,000</div>
                    <div style="color:var(--text-muted); font-size:13px;"><i class='bx bx-trending-up'></i> +15% from last year</div>
                </div>
            </div>

            <div class="chart-card">
                <div class="card-header">
                    <h2 class="card-title">Recent Invoices & Transactions</h2>
                </div>
                <table class="data-table">
                    <thead>
                        <tr><th>Invoice ID</th><th>Date</th><th>Client</th><th>Method</th><th>Status</th><th style="text-align:right;">Amount</th></tr>
                    </thead>
                    <tbody>
                        <tr><td>#INV-2025-089</td><td>19 May 2025</td><td>Rahul & Priya</td><td>Bank Transfer</td><td><span class="status-badge status-paid">Paid</span></td><td style="text-align:right; font-weight:600;">₹ 1,50,000</td></tr>
                        <tr><td>#INV-2025-088</td><td>18 May 2025</td><td>Amit Sharma</td><td>UPI</td><td><span class="status-badge status-pending">Pending</span></td><td style="text-align:right; font-weight:600;">₹ 5,000</td></tr>
                        <tr><td>#INV-2025-087</td><td>15 May 2025</td><td>Tech Corp Meetup</td><td>Credit Card</td><td><span class="status-badge status-paid">Paid</span></td><td style="text-align:right; font-weight:600;">₹ 25,000</td></tr>
                        <tr><td>#INV-2025-086</td><td>10 May 2025</td><td>Local Bakery</td><td>Bank Transfer</td><td><span class="status-badge status-paid">Paid</span></td><td style="text-align:right; font-weight:600;">₹ 12,000</td></tr>
                    </tbody>
                </table>
            </div>
        </div>
    </main>
</body>
</html>
