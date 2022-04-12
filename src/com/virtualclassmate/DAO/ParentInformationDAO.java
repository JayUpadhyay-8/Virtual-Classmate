package com.virtualclassmate.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ParentInformationDAO {
	@Autowired 
	SessionFactory sessionfactory;
	
	public List parent_display(int id)
	{

		
		Session session = sessionfactory.openSession();
		Transaction trans = session.beginTransaction();
		
		System.out.println("lol");
		Query q = session.createQuery("from ParentInformationVO where studentVO ="+id);
		
	List FeesList = q.list();
		
		System.out.println("lilllll"+FeesList.get(0));
		

		
		trans.commit();
		session.close();
		
		return FeesList;
	}
	
	public List medical_display(int id)
	{

		
		Session session = sessionfactory.openSession();
		Transaction trans = session.beginTransaction();
		
		System.out.println("lol");
		Query q = session.createQuery("from StudentMedicalVO where studentVO ="+id);
		
	List infoList = q.list();
		
		System.out.println("lilllll"+infoList.get(0));
		

		
		trans.commit();
		session.close();
		
		return infoList;
	}

}
