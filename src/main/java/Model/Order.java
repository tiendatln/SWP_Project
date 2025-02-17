/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author tiend
 */
public class Order {
      private int id;
    private String user;
    private String totalPrice;
    private String date;
    private String status;

    public Order(int id, String user, String totalPrice, String date, String status) {
        this.id = id;
        this.user = user;
        this.totalPrice = totalPrice;
        this.date = date;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public String getUser() {
        return user;
    }

    public String getTotalPrice() {
        return totalPrice;
    }

    public String getDate() {
        return date;
    }

    public String getStatus() {
        return status;
    }
}
