package com.MaikeDun.bean;

public class Staffs {
	private Integer staffId;
	private String staffName;
	private String sex;
	private String phone;
	private String email;
	private String idcard;
	private String photo;
	private String department;
	private String position;
	public Integer getStaffId() {
		return staffId;
	}
	public void setStaffId(Integer staffId) {
		this.staffId = staffId;
	}
	public String getStaffName() {
		return staffName;
	}
	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getIdcard() {
		return idcard;
	}
	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public Staffs(Integer staffId, String staffName, String sex, String phone, String email, String idcard,
			String photo, String department, String position) {
		super();
		this.staffId = staffId;
		this.staffName = staffName;
		this.sex = sex;
		this.phone = phone;
		this.email = email;
		this.idcard = idcard;
		this.photo = photo;
		this.department = department;
		this.position = position;
	}
	public Staffs() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
