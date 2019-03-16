package com.codegym.model;

public class Product {
    private int id;
    private String title;
    private String author;
    private String summary;
    public Product() {
    }

    public Product(int id, String title, String author, String summary) {
        this.id = id;
        this.author=author;
        this.title=title;
        this.summary=summary;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public void put(int id, Product product) {

    }
}
