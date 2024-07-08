package com.codegym.istore.service.impl;

import com.codegym.istore.model.Category;
import com.codegym.istore.repository.ICategoryRepository;
import com.codegym.istore.repository.impl.CategoryRepository;
import com.codegym.istore.service.ICategoryService;

import java.util.List;

public class CategoryService implements ICategoryService {
    private static final ICategoryRepository categoryRepository = new CategoryRepository();

    @Override
    public List<Category> getAllCategory() {
        return categoryRepository.getAllCategory();
    }
}
