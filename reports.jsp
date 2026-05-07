<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reports - Photography System</title>
    <link rel="stylesheet" href="css/style.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        .report-actions { display: flex; gap: 12px; }
        .btn-export { background: white; border: 1px solid var(--border-color); padding: 8px 16px; border-radius: 8px; font-weight: 500; cursor: pointer; display: flex; align-items: center; gap: 8px; color: var(--text-main); }
        .btn-export i { color: var(--blue-dark); font-size: 18px; }
        .btn-export:hover { background: #f8fafc; }
        .full-chart-card { background: white; border-radius: 16px; padding: 32px; margin-bottom: 24px; box-shadow: 0 1px 3px rgba(0,0,0,0.05); border: 1px solid var(--border-color); }
        .chart-header { display: flex; justify-content: space-between; align-items: center; margin-bottom: 24px; }
        .chart-header h2 { font-size: 18px; font-weight: 600; }
        .chart-container-large { position: relative; height: 350px; width: 100%; }
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
            <li class="nav-item active"><a href="<%= request.getContextPath() %>/reports.jsp" class="nav-link"><i class='bx bx-bar-chart-alt-2'></i><span>Reports</span></a></li>
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
                    <h1>Reports & Analytics</h1>
                    <p>Business analytics and yearly trends</p>
                </div>
                <div class="report-actions">
                    <button class="btn-export"><i class='bx bxs-file-pdf'></i> Export PDF</button>
                    <button class="btn-export"><i class='bx bx-spreadsheet'></i> Export Excel</button>
                </div>
            </div>

            <!-- Revenue Trend -->
            <div class="full-chart-card">
                <div class="chart-header">
                    <h2>Yearly Revenue Trend</h2>
                    <select style="padding:6px 12px; border-radius:6px; border:1px solid #e2e8f0;">
                        <option>2025</option>
                        <option>2024</option>
                    </select>
                </div>
                <div class="chart-container-large">
                    <canvas id="yearlyChart"></canvas>
                </div>
            </div>

            <div style="display:grid; grid-template-columns: 1fr 1fr; gap:24px;">
                <!-- Booking Types -->
                <div class="full-chart-card" style="margin-bottom:0;">
                    <div class="chart-header">
                        <h2>Bookings by Package</h2>
                    </div>
                    <div class="chart-container-large" style="height: 250px;">
                        <canvas id="packageChart"></canvas>
                    </div>
                </div>

                <!-- Source of Booking -->
                <div class="full-chart-card" style="margin-bottom:0;">
                    <div class="chart-header">
                        <h2>Client Acquisition Source</h2>
                    </div>
                    <div class="chart-container-large" style="height: 250px;">
                        <canvas id="sourceChart"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <script>
        // Yearly Revenue
        const yearlyCtx = document.getElementById('yearlyChart').getContext('2d');
        new Chart(yearlyCtx, {
            type: 'bar',
            data: {
                labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                datasets: [{
                    label: 'Revenue (₹)',
                    data: [120000, 150000, 180000, 140000, 250000, 310000, 290000, 210000, 240000, 380000, 420000, 500000],
                    backgroundColor: '#3b82f6',
                    borderRadius: 6
                }]
            },
            options: { responsive: true, maintainAspectRatio: false, plugins: { legend: { display: false } }, scales: { y: { beginAtZero: true, grid: { borderDash: [5, 5], color: '#f1f5f9' }, ticks: { callback: function(value) { return '₹ ' + (value/1000) + 'k'; } }, border: { display: false } }, x: { grid: { display: false }, border: { display: false } } } }
        });

        // Package Types
        const packageCtx = document.getElementById('packageChart').getContext('2d');
        new Chart(packageCtx, {
            type: 'doughnut',
            data: {
                labels: ['Wedding Pro', 'Pre-Wedding', 'Portrait', 'Product'],
                datasets: [{ data: [45, 25, 20, 10], backgroundColor: ['#3b82f6', '#ef4444', '#10b981', '#8b5cf6'], borderWidth: 0 }]
            },
            options: { cutout: '65%', responsive: true, maintainAspectRatio: false, plugins: { legend: { position: 'right' } } }
        });

        // Source
        const sourceCtx = document.getElementById('sourceChart').getContext('2d');
        new Chart(sourceCtx, {
            type: 'pie',
            data: {
                labels: ['Instagram', 'Referrals', 'Website', 'Facebook'],
                datasets: [{ data: [40, 35, 15, 10], backgroundColor: ['#ec4899', '#f59e0b', '#3b82f6', '#0ea5e9'], borderWidth: 0 }]
            },
            options: { responsive: true, maintainAspectRatio: false, plugins: { legend: { position: 'right' } } }
        });
    </script>
</body>
</html>
