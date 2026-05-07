<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Photography Booking</title>
    <link rel="stylesheet" href="css/style.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <style>
        body { display: flex; justify-content: center; align-items: center; min-height: 100vh; background-color: var(--bg-color); }
        .login-card { background-color: white; border-radius: 16px; padding: 40px; box-shadow: 0 4px 6px rgba(0,0,0,0.05); width: 100%; max-width: 400px; text-align: center; }
        .login-logo { font-size: 32px; color: var(--primary-color); margin-bottom: 10px; }
        .login-card h2 { margin-bottom: 24px; color: var(--text-main); }
        .form-group { text-align: left; margin-bottom: 20px; }
        .form-group label { display: block; margin-bottom: 8px; font-weight: 500; font-size: 14px; }
        .form-group input { width: 100%; padding: 12px; border: 1px solid var(--border-color); border-radius: 8px; font-size: 14px; }
        .btn-submit { background-color: var(--blue-dark); color: white; border: none; padding: 12px 24px; border-radius: 8px; font-size: 14px; font-weight: 600; cursor: pointer; width: 100%; margin-top: 10px; }
        .btn-submit:hover { background-color: #1d4ed8; }
        .error-msg { color: #ef4444; font-size: 14px; margin-bottom: 15px; }
    </style>
</head>
<body>
    <div class="login-card">
        <div class="login-logo"><i class='bx bx-camera'></i></div>
        <h2>PhotoBook Login</h2>
        <% if(request.getAttribute("error") != null) { %>
            <div class="error-msg"><%= request.getAttribute("error") %></div>
        <% } %>
        <form action="<%= request.getContextPath() %>/login" method="POST">
            <div class="form-group">
                <label>Username</label>
                <input type="text" name="username" required value="admin">
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="password" name="password" required value="admin">
            </div>
            <button type="submit" class="btn-submit">Login</button>
        </form>
    </div>
</body>
</html>
