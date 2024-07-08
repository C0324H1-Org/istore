package com.codegym.istore.controller;

import com.codegym.istore.model.Category;
import com.codegym.istore.service.ICategoryService;
import com.codegym.istore.service.impl.CategoryService;
import com.codegym.istore.model.Product;
import com.codegym.istore.service.IProductService;
import com.codegym.istore.service.impl.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CategoryController", urlPatterns = "/category")
public class CategoryController extends HttpServlet {
    private static final ICategoryService categoryService = new CategoryService();
    IProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        int idCategory = Integer.parseInt(req.getParameter("idCategory"));

        List<Product> products = productService.getProductByCategory(idCategory);
        List<Category> categories = categoryService.getAllCategory();


        req.setAttribute("listProduct", products);
        req.setAttribute("categories", categories);
        req.setAttribute("tag", idCategory);
        req.getRequestDispatcher("/WEB-INF/view/product/index.jsp").forward(req, resp);
    }
}
