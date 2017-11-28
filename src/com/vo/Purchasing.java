package com.vo;

/*import java.util.Date;*/
import java.sql.Date;	


public class Purchasing {
	private int hid;
	private String userid;
	private int pid;	
	private java.sql.Date pdate;
	
	// product join
	private String name;
	private int price;
	private String imgname;
	 
	
	public Purchasing() {
	}
	
	public Purchasing(String userid, int pid) {
	
		this.userid = userid;
		this.pid = pid;
		
	}
	
	public Purchasing(int hid, String userid, int pid) {
		this.hid = hid;
		this.userid = userid;
		this.pid = pid;
		
	}

	public Purchasing(int hid, String userid, int pid, Date pdate) {
		super();
		this.hid = hid;
		this.userid = userid;
		this.pid = pid;
		this.pdate = pdate;
	}
		
	public Purchasing(int hid, String userid, int pid, Date pdate, String name, int price, String imgname) {
		super();
		this.hid = hid;
		this.userid = userid;
		this.pid = pid;
		this.pdate = pdate;
		this.name = name;
		this.price = price;
		this.imgname = imgname;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
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

	public String getImgname() {
		return imgname;
	}

	public void setImgname(String imgname) {
		this.imgname = imgname;
	}

	public int getHid() {
		return hid;
	}

	public void setHid(int hid) {
		this.hid = hid;
	}

	public String getuserid() {
		return userid;
	}

	public void setuserid(String userid) {
		this.userid = userid;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public java.sql.Date getPdate() {
		return pdate;
	}

	public void setPdate(java.sql.Date pdate) {
		this.pdate = pdate;
	}

	@Override
	public String toString() {
		return "Purchasing [hid=" + hid + ", userid=" + userid + ", pid=" + pid + ", pdate=" + pdate + ", name=" + name
				+ ", price=" + price + ", imgname=" + imgname + "]";
	}

	
	
}



