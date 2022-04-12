package com.virtualclassmate.VO;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name="student_fees_details")
public class FeesVO {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;

	


	@Column(name="feesPaid")
	private String feesPaid;
	
	@Column(name="feesLeft")
	private String feesLeft;
	
	@Column(name="feePeriod")
	private String feePeriod;
	//total fees
	@JoinColumn
	@ManyToOne
	
	private CourseVO courseVO;
	
//	student
	@JoinColumn
	@OneToOne
	private StudentVO studentVO;
	
	
	
	@Column(name="last_fees_paid_date")
	private String last_fees_paid_date;
	
	
	@Column(name="due_date")
	private String due_date;


	@Column(name="receipt_id")
	private String receiptId;
	
	public String getReceiptId() {
		return receiptId;
	}



	public void setReceiptId(String receiptId) {
		this.receiptId = receiptId;
	}



	public String getTransactionId() {
		return transactionId;
	}



	public void setTransactionId(String transactionId) {
		this.transactionId = transactionId;
	}



	@Column(name="transaction_id")
	private String transactionId;

	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getFeesPaid() {
		return feesPaid;
	}



	public void setFeesPaid(String feesPaid) {
		this.feesPaid = feesPaid;
	}



	public String getFeesLeft() {
		return feesLeft;
	}



	public void setFeesLeft(String feesLeft) {
		this.feesLeft = feesLeft;
	}



	public CourseVO getCourseVO() {
		return courseVO;
	}



	

	public String getDue_date() {
		return due_date;
	}



	public void setDue_date(String due_date) {
		this.due_date = due_date;
	}



	public void setCourseVO(CourseVO courseVO) {
		this.courseVO = courseVO;
	}



	public StudentVO getStudentVO() {
		return studentVO;
	}



	public void setStudentVO(StudentVO studentVO) {
		this.studentVO = studentVO;
	}



	public String getLast_fees_paid_date() {
		return last_fees_paid_date;
	}



	public void setLast_fees_paid_date(String last_fees_paid_date) {
		this.last_fees_paid_date = last_fees_paid_date;
	}



	public String getFeePeriod() {
		return feePeriod;
	}



	public void setFeePeriod(String feePeriod) {
		this.feePeriod = feePeriod;
	}



		
	
	

	
}

