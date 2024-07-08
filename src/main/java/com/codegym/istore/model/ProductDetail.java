package com.codegym.istore.model;

public class ProductDetail {

    private int productDetailId;
    private int productId;
    private int productRamId;
    private int productRomId;
    private int productColorId;
    private String display;
    private String camera;
    private String battery;

    public ProductDetail() {
    }

    public ProductDetail(int productDetailId, int productId, int productRamId, int productRomId, int productColorId , String display, String camera, String battery) {
        this.productDetailId = productDetailId;
        this.productId = productId;
        this.productRamId = productRamId;
        this.productRomId = productRomId;
        this.productColorId = productColorId;
        this.display = display;
        this.camera = camera;
        this.battery = battery;
    }

    public ProductDetail(int productId, int productRamId, int productRomId, int productColorId , String display, String camera, String battery) {
        this.productId = productId;
        this.productRamId = productRamId;
        this.productRomId = productRomId;
        this.productColorId = productColorId;
        this.display = display;
        this.camera = camera;
        this.battery = battery;
    }

    public int getProductDetailId() {
        return productDetailId;
    }

    public void setProductDetailId(int productDetailId) {
        this.productDetailId = productDetailId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getProductRamId() {
        return productRamId;
    }

    public void setProductRamId(int productRamId) {
        this.productRamId = productRamId;
    }

    public int getProductRomId() {
        return productRomId;
    }

    public void setProductRomId(int productRomId) {
        this.productRomId = productRomId;
    }

    public int getProductColorId() {
        return productColorId;
    }

    public void setProductColorId(int productColorId) {
        this.productColorId = productColorId;
    }

    public String getDisplay() {
        return display;
    }

    public void setDisplay(String display) {
        this.display = display;
    }

    public String getCamera() {
        return camera;
    }

    public void setCamera(String camera) {
        this.camera = camera;
    }

    public String getBattery() {
        return battery;
    }

    public void setBattery(String battery) {
        this.battery = battery;
    }
}
