package com.virtualclassmate.VO;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.type.DateType;

@Entity
@Table(name="student_details")
public class StudentVO {
	

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;

	@Column
	private String name;
	
	@Column
	private int age;
	
	@Column(name="dob")
	private String dob;
	
	@Column(name="email")
	private String email;
	
	
	@Column(name="gender")
	private String gender;
	
	
	@Column(name="roll_no")
	private String roll_no;
	
	@Column(name="f_name")
	private String fname;
	
	@Column(name="m_name")
	private String mname;
	
	
	@Column(name="tel_number")
	private String tno;
	
	@Column(name="mobile_number")
	private String mobile_number;
	
	@Column(name="h_name")
	private String h_name;
	
	@Column(name="landmark")
	private String landmark;
	
	@Column(name="area")
	private String area;
	
	@Column(name="city")
	private String city;
	
	@Column(name="state")
	private String state;
	
	@Column(name="country")
	private String country;

	@Column(name="pincode")
	private String pin;
	
	
	public String getPin() {
		return pin;
	}


	public void setPin(String pin) {
		this.pin = pin;
	}


	@JoinColumn
	@OneToOne
	private CourseVO courseVO;
	
	
	public CourseVO getCourseVO() {
		return courseVO;
	}


	public void setCourseVO(CourseVO courseVO) {
		this.courseVO = courseVO;
	}


	@Column(name="fees")
	private String fees;


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


	
	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}


	public String getDob() {
		return dob;
	}


	public void setDob(String dob) {
		this.dob = dob;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getRoll_no() {
		return roll_no;
	}


	public void setRoll_no(String roll_no) {
		this.roll_no = roll_no;
	}


	public String getFname() {
		return fname;
	}


	public void setFname(String fname) {
		this.fname = fname;
	}


	public String getMname() {
		return mname;
	}


	public void setMname(String mname) {
		this.mname = mname;
	}


	public String getTno() {
		return tno;
	}


	public void setTno(String tno) {
		this.tno = tno;
	}




	public String getMobile_number() {
		return mobile_number;
	}


	public void setMobile_number(String mobile_number) {
		this.mobile_number = mobile_number;
	}



	
	public String getH_name() {
		return h_name;
	}


	public void setH_name(String h_name) {
		this.h_name = h_name;
	}


	public String getLandmark() {
		return landmark;
	}


	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}


	public String getArea() {
		return area;
	}


	public void setArea(String area) {
		this.area = area;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public String getState() {
		return state;
	}


	public void setState(String state) {
		this.state = state;
	}


	public String getCountry() {
		return country;
	}


	public void setCountry(String country) {
		this.country = country;
	}


	public String getFees() {
		return fees;
	}


	public void setFees(String fees) {
		this.fees = fees;
	}
	
	
	
	
	
	
	

}
