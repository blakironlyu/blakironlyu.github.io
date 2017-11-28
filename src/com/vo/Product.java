package com.vo;

import java.util.Date;

public class Product {
	private int id;
	private String name;
	private int price;
	private Date regdate;
	private String imgname;
	private String category;
	
	public Product() {
	}
	
	public Product(String name, int price, String imgname, String category) {
		super();
		this.name = name;
		this.price = price;
		this.imgname = imgname;
		this.category = category;
	}

	public Product(String name, int price, String imgname) {
		
		this.name = name;
		this.price = price;
		this.imgname = imgname; 
	}
	
	public Product(int id, String name, int price) {
		this.id = id;
		this.name = name;
		this.price = price;
	}

	public Product(int id, String name, int price, String imgname) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.imgname = imgname;
	}

	public Product(int id, String name, int price, Date regdate, String imgname) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.regdate = regdate;
		this.imgname = imgname;
	}
	
	public Product(int id, String name, int price, Date regdate, String imgname, String category) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.regdate = regdate;
		this.imgname = imgname;
		this.category = category;
	}

	public Product(int id, String name, int price, Date regdate) {
		this.id = id;
		this.name = name;
		this.price = price;
		this.regdate = regdate;
	}

	public String getImgname() {
		return imgname;
	}

	public void setImgname(String imgname) {
		this.imgname = imgname;
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

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", price=" + price + ", regdate=" + regdate + ", imgname="
				+ imgname + "]";
	}

	
	
}



