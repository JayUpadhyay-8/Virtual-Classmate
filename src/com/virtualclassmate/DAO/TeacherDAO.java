package com.virtualclassmate.DAO;

import java.util.ArrayList;
import java.util.List;

import org.apache.http.client.fluent.Request;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.virtualclassmate.VO.LoginVO;
import com.virtualclassmate.VO.TeacherVO;

@Repository
public class TeacherDAO {
	@Autowired 
	SessionFactory sessionfactory;
	
	public void insert(TeacherVO teacherVO)
	{
		try {
			Session session = sessionfactory.openSession();
			Transaction transaction=session.beginTransaction();
			session.saveOrUpdate(teacherVO);
			transaction.commit();
			session.close();
			
			
			
			 
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

	}
	public List viewTeacher()
	{
		List teacherList = new ArrayList<>();
		Session session = sessionfactory.openSession();
		Transaction trans = session.beginTransaction();
		
		Query q = session.createQuery("from TeacherVO");
		teacherList = q.list();
		

		
		trans.commit();
		session.close();
		
		return teacherList;
	
	}
	
	public void deleteTeacher(TeacherVO teacherVO)
	{
		Session session = sessionfactory.openSession();
		Transaction trans = session.beginTransaction();
		
		session.delete(teacherVO);
	
		trans.commit();
		session.close();
	}
	public List editTeacher(TeacherVO teacherVO)
	{

		//CAN BE USED FOR GETTING DATA OF A PARTICULAR TEACHER IN DASHBOARD
		
		List editList = new ArrayList<>();
		Session session = sessionfactory.openSession();
		Transaction trans = session.beginTransaction();
		
		Query q = session.createQuery("from TeacherVO where id ="+teacherVO.getId());
		editList = q.list();
		

		
		trans.commit();
		session.close();
		
		return editList;
	}

	public List editTeacherfinal(int id)
	{

		//CAN BE USED FOR GETTING DATA OF A PARTICULAR TEACHER IN DASHBOARD
		
		List editList = new ArrayList<>();
		Session session = sessionfactory.openSession();
		Transaction trans = session.beginTransaction();
		
		Query q = session.createQuery("from TeacherVO where id ="+id);
		editList = q.list();
		

		
		trans.commit();
		session.close();
		
		return editList;
	}

	
}
