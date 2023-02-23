/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package order;

import java.sql.Date;

/**
 *
 * @author dangn
 */
public class OrderDTO {
    private int orderID;
    private String fullName;
    private String address;
    private String status;
    private Date date;
    private int userID;

    public OrderDTO() {
    }

    public OrderDTO(int orderID, String fullName, String address, String status, Date date, int userID) {
        this.orderID = orderID;
        this.fullName = fullName;
        this.address = address;
        this.status = status;
        this.date = date;
        this.userID = userID;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }
    
}
