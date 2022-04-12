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
@Table(name="ParentInformation")
public class ParentInformationVO {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getFocc() {
		return focc;
	}

	public void setFocc(String focc) {
		this.focc = focc;
	}

	public String getFmno() {
		return fmno;
	}

	public void setFmno(String fmno) {
		this.fmno = fmno;
	}

	@Column(name="fname")
	private String fname;
	
	@Column(name="focc")
	private String focc;
	
	@Column(name="fmno")
	private String fmno;
	
	@Column(name="fedu")
	private String fedu;
	

	@Column(name="femail")
	private String femail;
	

	@Column(name="faddress")
	private String faddress;
	

	@Column(name="fcaste")
	private String fcaste;
	
	@Column(name="religion")
	private String religion;
	
	@Column(name="mname")
	private String mname;
	
	@Column(name="mocc")
	private String mocc;
	
	@Column(name="mmno")
	private String mmno;
	
	@Column(name="medu")
	private String medu;
	

	@Column(name="memail")
	private String memail;
	

	@Column(name="maddress")
	private String maddress;
	

	@Column(name="mcaste")
	private String mcaste;
	

	
	
	
	public String getFedu() {
		return fedu;
	}

	public void setFedu(String fedu) {
		this.fedu = fedu;
	}

	public String getFemail() {
		return femail;
	}

	public void setFemail(String femail) {
		this.femail = femail;
	}

	public String getFaddress() {
		return faddress;
	}

	public void setFaddress(String faddress) {
		this.faddress = faddress;
	}

	public String getFcaste() {
		return fcaste;
	}

	public void setFcaste(String fcaste) {
		this.fcaste = fcaste;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getMocc() {
		return mocc;
	}

	public void setMocc(String mocc) {
		this.mocc = mocc;
	}

	public String getMmno() {
		return mmno;
	}

	public void setMmno(String mmno) {
		this.mmno = mmno;
	}

	public String getMedu() {
		return medu;
	}

	public void setMedu(String medu) {
		this.medu = medu;
	}

	public String getMemail() {
		return memail;
	}

	public void setMemail(String memail) {
		this.memail = memail;
	}

	public String getMaddress() {
		return maddress;
	}

	public void setMaddress(String maddress) {
		this.maddress = maddress;
	}

	public String getMcaste() {
		return mcaste;
	}

	public void setMcaste(String mcaste) {
		this.mcaste = mcaste;
	}

	@JoinColumn
	@OneToOne
	private StudentVO studentVO;


	public StudentVO getStudentVO() {
		return studentVO;
	}

	public void setStudentVO(StudentVO studentVO) {
		this.studentVO = studentVO;
	}
	
	@JoinColumn
	@OneToOne
	private StudentMedicalVO studentmedicalVO;
	
	

	public StudentMedicalVO getStudentmedicalVO() {
		return studentmedicalVO;
	}

	public void setStudentmedicalVO(StudentMedicalVO studentmedicalVO) {
		this.studentmedicalVO = studentmedicalVO;
	}

	public String getReligion() {
		return religion;
	}

	public void setReligion(String religion) {
		this.religion = religion;
	}
	
	
	


}
