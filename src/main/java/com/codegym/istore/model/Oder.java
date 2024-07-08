package com.codegym.istore.model;

public class Oder {

    private int oderId;
    private int productId;
    private int customerId;
    private int status;

    public Oder(int customerId, int productId) {
        this.productId = productId;
        this.customerId = customerId;
    }

    public int getOderId() {
        return oderId;
    }

    public void setOderId(int oderId) {
        this.oderId = oderId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
