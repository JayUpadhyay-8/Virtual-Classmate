package com.virtualclassmate.DAO;

import org.hibernate.Query;

import org.hibernate.Session;
import java.util.*;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.virtualclassmate.VO.StudentVO;

@Repository
public class StudentDAO {
	@Autowired 
	SessionFactory sessionfactory;
	
	public void insert(StudentVO studentVO)
	{
		try {
			Session session = sessionfactory.openSession();
			Transaction transaction=session.beginTransaction();
			session.saveOrUpdate(studentVO);
			transaction.commit();
			session.close();
			
			
			
			 
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

	}
	public List viewStudent()
	{
		List StudentList = new ArrayList<>();
		Session session = sessionfactory.openSession();
		Transaction trans = session.beginTransaction();
		
		Query q = session.createQuery("from StudentVO");
		StudentList = q.list();
		

		
		trans.commit();
		session.close();
		
		return StudentList;
	
	}
	public void deleteStudent(StudentVO studentVO)
	{
		Session session = sessionfactory.openSession();
		Transaction trans = session.beginTransaction();
		
		session.delete(studentVO);
	
		trans.commit();
		session.close();
	}
	public List editStudent(StudentVO studentVO)
	{
		
		
		//CAN BE USED FOR GETTING DATA OF A PARTICULAR STUDENT IN DASHBOARD
		
		List editList = new ArrayList<>();
		Session session = sessionfactory.openSession();
		Transaction trans = session.beginTransaction();
		
		Query q = session.createQuery("from StudentVO where id ="+studentVO.getId());
		editList = q.list();
		

		
		trans.commit();
		session.close();
		
		return editList;
	}
	
	public List editStudentfinal(int id)
	{

		//CAN BE USED FOR GETTING DATA OF A PARTICULAR STUDENT IN DASHBOARD
		
		List editList = new ArrayList<>();
		Session session = sessionfactory.openSession();
		Transaction trans = session.beginTransaction();
		
		Query q = session.createQuery("from StudentVO where id ="+id);
		editList = q.list();
		

		
		trans.commit();
		session.close();
		
		return editList;
	}
	
	


	
}
