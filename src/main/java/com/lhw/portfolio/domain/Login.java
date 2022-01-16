package com.lhw.portfolio.domain;

public class Login {
	
	private int no;
	private String id;
	private String pw;
	private String name;
	private String email;
	private String phone;
	private String joinDate;
	private int state;
	
	public Login() {
		// TODO Auto-generated constructor stub
	}

	public Login(int no, String id, String pw, String name, String email, String phone, String joinDate, int state) {
		super();
		this.no = no;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.joinDate = joinDate;
		this.state = state;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

}
