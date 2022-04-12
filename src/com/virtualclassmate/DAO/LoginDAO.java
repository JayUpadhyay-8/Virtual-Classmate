package com.virtualclassmate.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.virtualclassmate.VO.LoginVO;


@Repository
public class LoginDAO 
{
	@Autowired SessionFactory sessionFactory;
	
	public void insertLogin(LoginVO loginVO) 
		{
			try
				{
					Session session=sessionFactory.openSession();
					Transaction transaction=session.beginTransaction();
					session.saveOrUpdate(loginVO);
					transaction.commit();
					session.close();
				}
			catch(Exception ex)
				{
					ex.printStackTrace();
				}
			
		}
	
	public List searchLoginID(String userName) 
	{
		List ls = new ArrayList<>();
		try
		{
		Session session = this.sessionFactory.openSession();
		Query q = session.createQuery("select teacherVO_id from LoginVO where username = '"+userName+"' ");
		ls = q.list();
		session.close();
		
		}
		catch (Exception e) {
			// TODO: handle exception
		}return ls;
	}
	
/*	public List viewLogin(LoginVO lVO)
	{
		List teacherList = new ArrayList<>();
		Session session = sessionfactory.openSession();
		Transaction trans = session.beginTransaction();
		
		Query q = session.createQuery("from LoginVO where username="+lVO.getUsername()+"" );
		teacherList = q.list();
		

		
		trans.commit();
		session.close();
		
		return teacherList;
	
	}*/
	public List viewLogin()
	{
		List teacherList = new ArrayList<>();
		Session session = sessionFactory.openSession();
		Transaction trans = session.beginTransaction();
		
		Query q = session.createQuery("from LoginVO");
		teacherList = q.list();
		

		
		trans.commit();
		session.close();
		
		return teacherList;
	
	}
	public List searchstep1(LoginVO loginVO) 
	{
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.openSession();
		Query q = session.createQuery("from LoginVO where username = '"+loginVO.getUsername()+"' ");
		List ls = q.list();
		session.close();
		return ls;
	}
	
	
	public void updatePassword(LoginVO loginVO) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction transaction= session.beginTransaction();
		Query q=session.createQuery("UPDATE LoginVO set password='"+loginVO.getPassword() +"'where username='"+loginVO.getUsername() +"'");
		q.executeUpdate();
		transaction.commit();
		session.close();
	}
}
