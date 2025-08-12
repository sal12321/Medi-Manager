package com.med ;
public class Medicine {
     public int id;
     public int medId ;
     public String name;
     public String company;
     public double price;
     public int quantity;
     public java.sql.Date expiry;

    public Medicine(int id,  String name, String company, double price, int quantity, java.sql.Date expiry) {
    	
        this.id = id;
        this.name = name;
        this.company = company;
        this.price = price;
        this.quantity = quantity;
        this.expiry = expiry;
    }
}