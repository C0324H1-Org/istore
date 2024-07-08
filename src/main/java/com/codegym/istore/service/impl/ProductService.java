package com.codegym.istore.service.impl;

import com.codegym.istore.model.CartDetailDTO;
import com.codegym.istore.model.Oder;
import com.codegym.istore.repository.IProductRepository;
import com.codegym.istore.repository.impl.ProductRepository;
import com.codegym.istore.model.Product;
import com.codegym.istore.model.ProductDetail;
import com.codegym.istore.service.IProductService;

import java.sql.SQLException;
import java.util.List;

public class ProductService implements IProductService {

    IProductRepository productRepository = new ProductRepository();
    @Override
    public List<Product> selectAllProduct() throws SQLException {
        return productRepository.selectAll();

    }

    @Override
    public void buyProduct(ProductDetail productDetail) throws SQLException {
        productRepository.buyProduct(productDetail);
    }

    @Override
    public List<CartDetailDTO> cartDetail() {
        return productRepository.cartDetail();
    }

    @Override
    public int searchByIdCustomer() {
        return productRepository.searchByIdCustomer();
    }

    @Override
    public void pushOder(Oder oder) {
        productRepository.pushOder(oder);
    }

    @Override
    public int searchByIdProduct() {
        return productRepository.searchByIdProduct();
    }

    @Override
    public List<Product> selectAllProductMac() {
        return productRepository.selectAllProductMac();
    }

    @Override
    public List<Product> selectAll() {
        return productRepository.selectAllItem();
    }

    @Override
    public List<Product> search(String search) {
        return productRepository.search(search);
    }

    @Override
    public List<Product> getProductByCategory(int idCategory) {
        return productRepository.getProductByCategory(idCategory);
    }

    @Override
    public void deletePay() {
        productRepository.deletePay();
    }

    @Override
    public void deleteAll() {
        productRepository.deleteAll();
    }

    @Override
    public boolean DeleteOder(int id) {
        return productRepository.DeleteOder(id);
    }


}
