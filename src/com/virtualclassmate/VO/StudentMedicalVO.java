package com.virtualclassmate.VO;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="Student_Medical")
public class StudentMedicalVO {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="blood_group")
	private String bg;
	
	@Column(name="emer_fname")
	private String f_name;
	
	@Column(name="emer_lname")
	private String l_name;
	
	@Column(name="emer_mno")
	private String mno;
	
	@Column(name="emer_relation")
	private String relation;
	
	
	
	
	


	public String getF_name() {
		return f_name;
	}

	public void setF_name(String f_name) {
		this.f_name = f_name;
	}

	public String getL_name() {
		return l_name;
	}

	public void setL_name(String l_name) {
		this.l_name = l_name;
	}

	public String getMno() {
		return mno;
	}

	public void setMno(String mno) {
		this.mno = mno;
	}

	public String getRelation() {
		return relation;
	}

	public void setRelation(String relation) {
		this.relation = relation;
	}

	@Column(name="allergy")
	private String allergy;


	@Column(name="disease")
	private String disease;


	@Column(name="height")
	private String height;


	@Column(name="weight")
	private String weight;


	@Column(name="regular_medication")
	private String regular_medication;

	@Column(name="problem_in_activity")
	private String pia;
	
	@JoinColumn
	@OneToOne
	private StudentVO studentVO;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBg() {
		return bg;
	}

	public void setBg(String bg) {
		this.bg = bg;
	}

	public String getAllergy() {
		return allergy;
	}

	public void setAllergy(String allergy) {
		this.allergy = allergy;
	}

	public String getDisease() {
		return disease;
	}

	public void setDisease(String disease) {
		this.disease = disease;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getRegular_medication() {
		return regular_medication;
	}

	public void setRegular_medication(String regular_medication) {
		this.regular_medication = regular_medication;
	}

	public String getPia() {
		return pia;
	}

	public void setPia(String pia) {
		this.pia = pia;
	}

	public StudentVO getStudentVO() {
		return studentVO;
	}

	public void setStudentVO(StudentVO studentVO) {
		this.studentVO = studentVO;
	}
	
}
