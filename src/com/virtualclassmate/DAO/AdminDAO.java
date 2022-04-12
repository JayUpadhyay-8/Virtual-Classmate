package com.virtualclassmate.DAO;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.virtualclassmate.VO.AdminVO;
import com.virtualclassmate.VO.LoginVO;

@Repository
public class AdminDAO {

	
@Autowired SessionFactory sessionFactory;
	

	public List adminLoginID(AdminVO adminVO) throws Exception
	{
		List adminList = new ArrayList<>();
		try
		{
			
			
		Session session = this.sessionFactory.openSession();
		Query q = session.createQuery(" from AdminVO where username = '"+adminVO.getUserName()+"' ");
		
		adminList = q.list();
		
		for(int i=0;i<adminList.size();i++)
		{
			System.out.println(adminList.get(i));
		}

		String a= q.getComment();
		System.out.println(a);
		
		AdminVO adminCheckVO = new AdminVO();
			
		
	System.out.println("aamchi"+adminVO.getUserName());
		
		
		
		
			System.out.println(adminCheckVO.getPassword());
			System.out.println(adminVO.getPassword());
			if(adminCheckVO.getPassword().equals(adminVO.getPassword())){
				
			}
			
			else {
				throw new Exception("Invalid login id or  password");
				
			}
		
		
		session.close();
		
		}
		catch (Exception e) {
			// TODO: handle exception
			throw new Exception("Invalid login id or  password");
		}
		
		return adminList;
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
	
	public List checkLogins(AdminVO adminVO) throws Exception{
		Session session = sessionFactory.openSession();
	      Transaction tx = null;
	      List loginList = null;
	      
	      System.out.print("u Name: " + adminVO.getUserName()); 
          System.out.print("  p Name: " + adminVO.getPassword()); 
    
	      try {
	         tx = session.beginTransaction();
	         loginList = session.createQuery("FROM AdminVO where userName ="+"'"+adminVO.getUserName()+"'").list(); 
	         for (Iterator iterator = loginList.iterator(); iterator.hasNext();){
	            AdminVO adminCheckVO = (AdminVO) iterator.next(); 
	            System.out.print("First Name: " + adminCheckVO.getUserName()); 
	            System.out.print("  Last Name: " + adminCheckVO.getPassword()); 
	            
	            if(adminVO.getPassword().equals(adminCheckVO.getPassword())){
	            	
	            	
	            }
	            else{
	            	throw new Exception("nikal");
	            }
	            
	         }
	         tx.commit();
	         
	      } catch (Exception e) {
	    	  throw new Exception(e.getMessage());
	         
	      } finally {
	         session.close();
	        
	      }
		return loginList;
	      
	   
	}
	
	
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
