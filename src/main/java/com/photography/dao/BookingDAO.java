package com.photography.dao;

import com.photography.model.Booking;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

public class BookingDAO {
    private static List<Booking> bookings = new ArrayList<>();
    private static final DateTimeFormatter FORMATTER = DateTimeFormatter.ofPattern("dd MMM yyyy");

    static {
        bookings.add(new Booking(UUID.randomUUID().toString(), LocalDate.now().format(FORMATTER), "Wedding", "Rahul & Priya", 150000));
        bookings.add(new Booking(UUID.randomUUID().toString(), LocalDate.now().format(FORMATTER), "Portrait", "Amit Sharma", 5000));
        bookings.add(new Booking(UUID.randomUUID().toString(), LocalDate.now().minusDays(1).format(FORMATTER), "Event", "Tech Corp Meetup", 25000));
        bookings.add(new Booking(UUID.randomUUID().toString(), LocalDate.now().minusDays(1).format(FORMATTER), "Product", "Local Bakery", 12000));
    }

    public static List<Booking> getAllBookings() {
        return bookings;
    }

    public static void addBooking(Booking booking) {
        // Parse date input (from yyyy-MM-dd) to friendly format
        try {
            LocalDate date = LocalDate.parse(booking.getDate(), DateTimeFormatter.ofPattern("yyyy-MM-dd"));
            booking.setDate(date.format(FORMATTER));
        } catch (Exception e) {
            // Keep original if parsing fails
        }
        bookings.add(0, booking); // Add to top
    }

    public static double getTotalRevenue() {
        return bookings.stream().mapToDouble(Booking::getAmount).sum();
    }

    public static int getTotalBookings() {
        return bookings.size();
    }
    
    public static int getNewCustomers() {
        // Simplified logic: just total bookings for demo
        return bookings.size();
    }

    public static double getAvgBookingValue() {
        if (bookings.isEmpty()) return 0;
        return getTotalRevenue() / bookings.size();
    }
}
