package com.gao.sh.domain;

import org.bson.types.ObjectId;

public class Product {
 //属性
	private ObjectId obj_idId;
	private int pid;
	private String pname;
	private int price;
	public Product() {
		super();
	}
	public Product(ObjectId obj_idId, int pid, String pname, int price) {
		super();
		this.obj_idId = obj_idId;
		this.pid = pid;
		this.pname = pname;
		this.price = price;
	}
	public ObjectId getObj_idId() {
		return obj_idId;
	}
	public void setObj_idId(ObjectId obj_idId) {
		this.obj_idId = obj_idId;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Product [obj_idId=" + obj_idId + ", pid=" + pid + ", pname=" + pname + ", price=" + price + "]";
	}
}
