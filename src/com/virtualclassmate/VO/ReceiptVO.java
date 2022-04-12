package com.virtualclassmate.VO;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="Student_MedicalInfo")
public class ReceiptVO {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="f_mno")
	private String f_mno;

	@Column(name="f_email")
	private String f_email;



	@Column(name="date")
	private String date;
	
	
	@JoinColumn
	@OneToOne
	private FeesVO feesVO;


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getF_mno() {
		return f_mno;
	}


	public void setF_mno(String f_mno) {
		this.f_mno = f_mno;
	}


	public String getF_email() {
		return f_email;
	}


	public void setF_email(String f_email) {
		this.f_email = f_email;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}


	public FeesVO getFeesVO() {
		return feesVO;
	}


	public void setFeesVO(FeesVO feesVO) {
		this.feesVO = feesVO;
	}
	
	
}

