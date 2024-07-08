package com.codegym.istore.model;

public class CartDetailDTO {

        private int id;
        private String image;
        private String nameProduct;
        private String producer;
        private String ram;
        private String rom;
        private String color;
        private int price;
        private String customerName;
        private String phone;
        private String address;

        public CartDetailDTO() {
        }

        public CartDetailDTO(String image, String nameProduct, String producer, String ram, String rom, String color, int price, String customerName, String phone, String address, int id) {
            this.image = image;
            this.nameProduct = nameProduct;
            this.producer = producer;
            this.ram = ram;
            this.rom = rom;
            this.color = color;
            this.price = price;
            this.customerName = customerName;
            this.phone = phone;
            this.address = address;
            this.id = id;

        }

        public int getId() {
            return id;
        }

        public void setId(int id) {
            this.id = id;
        }

        public String getImage() {
            return image;
        }

        public void setImage(String image) {
            this.image = image;
        }

        public String getNameProduct() {
            return nameProduct;
        }

        public void setNameProduct(String nameProduct) {
            this.nameProduct = nameProduct;
        }

        public String getProducer() {
            return producer;
        }

        public void setProducer(String producer) {
            this.producer = producer;
        }

        public String getRam() {
            return ram;
        }

        public void setRam(String ram) {
            this.ram = ram;
        }

        public String getRom() {
            return rom;
        }

        public void setRom(String rom) {
            this.rom = rom;
        }

        public String getColor() {
            return color;
        }

        public void setColor(String color) {
            this.color = color;
        }

        public int getPrice() {
            return price;
        }

        public void setPrice(int price) {
            this.price = price;
        }

        public String getCustomerName() {
            return customerName;
        }

        public void setCustomerName(String customerName) {
            this.customerName = customerName;
        }

        public String getPhone() {
            return phone;
        }

        public void setPhone(String phone) {
            this.phone = phone;
        }

        public String getAddress() {
            return address;
        }

        public void setAddress(String address) {
            this.address = address;
        }


}
