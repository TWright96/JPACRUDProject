package com.skilldistillery.pursespackage.entities;

import java.sql.Date;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Purse {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String color;
	private String brand;
	private String style;
	private String size;
	private String material;
	@Column(name="purse_image_url")
	private String picture;
	@Column(name="date_last_cleaned")
	private Date dateCleaned;
	@Column(name="purchase_price")
	private double price;
	
	

	public Purse() {
		super();
	}



	public Purse(int id, String color, String brand, String style, String size, String material, String picture,
			Date dateCleaned, double price) {
		super();
		this.id = id;
		this.color = color;
		this.brand = brand;
		this.style = style;
		this.size = size;
		this.material = material;
		this.picture = picture;
		this.dateCleaned = dateCleaned;
		this.price = price;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getColor() {
		return color;
	}



	public void setColor(String color) {
		this.color = color;
	}



	public String getBrand() {
		return brand;
	}



	public void setBrand(String brand) {
		this.brand = brand;
	}



	public String getStyle() {
		return style;
	}



	public void setStyle(String style) {
		this.style = style;
	}



	public String getSize() {
		return size;
	}



	public void setSize(String size) {
		this.size = size;
	}



	public String getMaterial() {
		return material;
	}



	public void setMaterial(String material) {
		this.material = material;
	}



	public String getPicture() {
		return picture;
	}



	public void setPicture(String picture) {
		this.picture = picture;
	}



	public Date getDateCleaned() {
		return dateCleaned;
	}



	public void setDateCleaned(Date dateCleaned) {
		this.dateCleaned = dateCleaned;
	}



	public double getPrice() {
		return price;
	}



	public void setPrice(double price) {
		this.price = price;
	}



	@Override
	public String toString() {
		return "Purse [id=" + id + ", color=" + color + ", brand=" + brand + ", style=" + style + ", size=" + size
				+ ", material=" + material + ", picture=" + picture + ", dateCleaned=" + dateCleaned + ", price="
				+ price + "]";
	}


}
