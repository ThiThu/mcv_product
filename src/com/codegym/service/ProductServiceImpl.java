package com.codegym.service;

import com.codegym.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> product;

    static {
        product = new HashMap<>();
        product.put(1, new Product(1, "đắc nhân tâm", "Dale Breckenridge Carnegie", "Đắc nhân tâm là một quyển sách nhằm tự giúp bản thân bán chạy nhất từ trước đến nay."));
        product.put(2, new Product(2, "Khi Lỗi Thuộc Về Những Vì Sao", "John Green", " Khi lỗi thuộc về những vì sao là tác phẩm thương tâm và tham vọng nhất của John Green, khám phá một cách khéo léo nét hài hước, li kỳ, và bi thảm của việc sống và việc yêu"));

    }
    @Override
    public List<Product> findAll() {
        return new ArrayList<>(product.values());
    }

    @Override
    public void save(Product product) {
        product.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return product.get(id);
    }
    @Override
    public void update(int id, Product product) {
        product.put(id, product);
    }

    @Override
    public void remove(int id) {
        product.remove(id);
    }
}



