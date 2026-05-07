package com.photography.servlet;

import com.photography.dao.BookingDAO;
import com.photography.model.Booking;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.UUID;

@WebServlet("/addBooking")
public class AddBookingServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/add_booking.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String clientName = request.getParameter("clientName");
        String category = request.getParameter("category");
        String amountStr = request.getParameter("amount");
        String date = request.getParameter("date");

        try {
            double amount = Double.parseDouble(amountStr);
            Booking booking = new Booking(UUID.randomUUID().toString(), date, category, clientName, amount);
            BookingDAO.addBooking(booking);
        } catch (NumberFormatException e) {
            // handle error
            request.setAttribute("error", "Invalid amount");
            request.getRequestDispatcher("/add_booking.jsp").forward(request, response);
            return;
        }

        response.sendRedirect(request.getContextPath() + "/dashboard");
    }
}
