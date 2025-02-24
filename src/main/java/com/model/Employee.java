package com.model;

public class Employee {
	private int eid;
	private String ename;
	private String email;
	private String pword;

	public Employee(int eid, String ename, String email, String pword) {
		this.eid = eid;
		this.ename = ename;
		this.email = email;
		this.pword = pword;
	}
	public Employee() {}
	public int getEid() {
		return eid;
	}

	public void setEid(int eid) {
		this.eid = eid;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPword() {
		return pword;
	}

	public void setPword(String pword) {
		this.pword = pword;
	}

	@Override
	public String toString() {
		return "Employee [eid=" + eid + ", ename=" + ename + ", email=" + email + ", pword=" + pword + "]";
	}

}
