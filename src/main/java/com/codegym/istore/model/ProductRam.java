package com.codegym.istore.model;

public class ProductRam {

    private int productRamId;
    private String productRamName;

    public ProductRam() {
    }

    public ProductRam(int productRamId, String productRamName) {
        this.productRamId = productRamId;
        this.productRamName = productRamName;
    }

    public int getProductRamId() {
        return productRamId;
    }

    public void setProductRamId(int productRamId) {
        this.productRamId = productRamId;
    }

    public String getProductRamName() {
        return productRamName;
    }

    public void setProductRamName(String productRamName) {
        this.productRamName = productRamName;
    }
}
