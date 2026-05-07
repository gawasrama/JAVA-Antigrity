package com.photography.servlet;

import com.photography.dao.BookingDAO;
import com.photography.model.Booking;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/dashboard")
public class DashboardServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Booking> recentBookings = BookingDAO.getAllBookings();
        
        request.setAttribute("recentBookings", recentBookings);
        request.setAttribute("totalRevenue", BookingDAO.getTotalRevenue());
        request.setAttribute("totalBookings", BookingDAO.getTotalBookings());
        request.setAttribute("newCustomers", BookingDAO.getNewCustomers());
        request.setAttribute("avgBookingValue", BookingDAO.getAvgBookingValue());
        
        request.getRequestDispatcher("/dashboard.jsp").forward(request, response);
    }
}
