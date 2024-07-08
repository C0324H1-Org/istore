package com.codegym.istore.repository.impl;

import com.codegym.istore.connection.DBConnection;
import com.codegym.istore.model.Category;
import com.codegym.istore.repository.ICategoryRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryRepository implements ICategoryRepository {
    Connection conn = DBConnection.getConnection();
    PreparedStatement ps = null;
    ResultSet rs = null;
    private static final String GET_ALL_CATEGORY = "select category_id, category_name, column_name from category";

    @Override
    public List<Category> getAllCategory() {
        List<Category> categories = new ArrayList<>();

        try {
            ps = conn.prepareStatement(GET_ALL_CATEGORY);
            rs = ps.executeQuery();

            int idCategory;
            String nameCategory;
            String imageCategory;

            while (rs.next()) {
                idCategory = rs.getInt(1);
                nameCategory = rs.getString(2);
                imageCategory = rs.getString(3);
                Category category = new Category(idCategory, nameCategory, imageCategory);
                categories.add(category);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return categories;
    }
}
