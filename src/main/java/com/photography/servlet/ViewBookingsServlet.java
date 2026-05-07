package com.photography.servlet;

import com.photography.dao.BookingDAO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/viewBookings")
public class ViewBookingsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("bookings", BookingDAO.getAllBookings());
        request.getRequestDispatcher("/view_bookings.jsp").forward(request, response);
    }
}
