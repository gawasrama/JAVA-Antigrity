package com.photography.model;

public class Booking {
    private String id;
    private String date;
    private String category;
    private String clientName;
    private double amount;

    public Booking(String id, String date, String category, String clientName, double amount) {
        this.id = id;
        this.date = date;
        this.category = category;
        this.clientName = clientName;
        this.amount = amount;
    }

    public String getId() { return id; }
    public void setId(String id) { this.id = id; }

    public String getDate() { return date; }
    public void setDate(String date) { this.date = date; }

    public String getCategory() { return category; }
    public void setCategory(String category) { this.category = category; }

    public String getClientName() { return clientName; }
    public void setClientName(String clientName) { this.clientName = clientName; }

    public double getAmount() { return amount; }
    public void setAmount(double amount) { this.amount = amount; }
}
