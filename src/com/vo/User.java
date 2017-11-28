package com.vo;

/*import java.util.Date;*/
import java.sql.Date;	

public class User {
	private String id;
	private String pwd;
	private String name;
	/*private Date bdate;*/
	private java.sql.Date bdate;
	public User() {
	}
	public User(String id, String pwd, String name) {
		this.id = id;
		this.pwd = pwd;
		this.name = name;
	}		
	public User(String id, String pwd, String name, Date bdate) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.bdate = bdate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getBdate() {
		return bdate;
	}
	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}
	
	@Override
	public String toString() {
		return "User [id=" + id + ", pwd=" + pwd + ", name=" + name + ", bdate=" + bdate + "]";
	}
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof User) {
			User temp = (User) obj;
			if((this.id).equals(temp.id) &&
				(this.pwd).equals(temp.pwd) &&
				(this.name).equals(temp.name) ) {
				return true;
			}
		}
		
		return false;
	}
	@Override
	public int hashCode() {
		return (id+pwd+name).hashCode();
	}
	
	
	
}






