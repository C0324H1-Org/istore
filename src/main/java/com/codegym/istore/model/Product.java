package com.codegym.istore.model;

public class Product {

    private int productId;
    private int categoryId;
    private String productName;
    private String producer;
    private String description;
    private int price;
    private String image;

    public Product() {
    }

    public Product(int productId, int categoryId, String productName, String producer, String description, int price, String image) {
        this.productId = productId;
        this.categoryId = categoryId;
        this.productName = productName;
        this.producer = producer;
        this.description = description;
        this.price = price;
        this.image = image;
    }

    public Product(int productId,String productName, String producer, String description, int price, String image) {
        this.productId = productId;
        this.productName = productName;
        this.producer = producer;
        this.description = description;
        this.price = price;
        this.image = image;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProducer() {
        return producer;
    }

    public void setProducer(String producer) {
        this.producer = producer;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
