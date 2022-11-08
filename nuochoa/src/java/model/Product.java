/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;





@Builder
@Getter
@Setter
@ToString
public class Product {
   private int id;
    private String name;
    private int quantity; //số lượng sản phẩm có trong kho
    private double price;
    private String description;
    private String imageUrl;
    private String createdDate;
    private int categoryId;
    private int th_id;

    public Product() {
    }

    public Product(int id, String name, int quantity, double price, String description, String imageUrl, String createdDate, int categoryId, int th_id) {
        this.id = id;
        this.name = name;
        this.quantity = quantity;
        this.price = price;
        this.description = description;
        this.imageUrl = imageUrl;
        this.createdDate = createdDate;
        this.categoryId = categoryId;
        this.th_id = th_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public String getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(String createdDate) {
        this.createdDate = createdDate;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public int getTh_id() {
        return th_id;
    }

    public void setTh_id(int th_id) {
        this.th_id = th_id;
    }

   
    
}
