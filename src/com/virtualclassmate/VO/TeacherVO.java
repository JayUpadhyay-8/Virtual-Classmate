package com.virtualclassmate.VO;

import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="teacher_details")
public class TeacherVO {

	

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;

	@Column
	private String name;
	
	@Column
	private int age;
	
	@Column(name="dob")
	private java.sql.Date dob;
	
	
	@Column(name="gender")
	private String gender;
	
	@Column(name="mobile_number")
	private String mno;
	
	@Column(name="Address")
	private String address;

	@Column(name="Salary")
	private String salary;
	
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

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public java.sql.Date getDob() {
		return dob;
	}

	public void setDob(java.sql.Date dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMno() {
		return mno;
	}

	public void setMno(String mno) {
		this.mno = mno;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public java.sql.Date getDoj() {
		return doj;
	}

	public void setDoj(java.sql.Date doj) {
		this.doj = doj;
	}

	@Column(name="doj")
	private java.sql.Date doj;


	/*@JoinColumn
	@ManyToOne
	@Column(name="Course_Id")
	private CourseVO courseVO;*/
	
	

	
}
