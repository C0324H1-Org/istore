package com.codegym.istore.repository;

import com.codegym.istore.model.Category;

import java.util.List;

public interface ICategoryRepository {
    List<Category> getAllCategory();
}
