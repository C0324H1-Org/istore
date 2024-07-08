package com.codegym.istore.model;

public class ProductRom {

    private int productRomId;
    private String productRomName;

    public ProductRom() {
    }

    public ProductRom(int productRomId, String productRomName) {
        this.productRomId = productRomId;
        this.productRomName = productRomName;
    }

    public int getProductRomId() {
        return productRomId;
    }

    public void setProductRomId(int productRomId) {
        this.productRomId = productRomId;
    }

    public String getProductRomName() {
        return productRomName;
    }

    public void setProductRomName(String productRomName) {
        this.productRomName = productRomName;
    }
}
