package com.virtualclassmate.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.virtualclassmate.VO.FeesVO;
@Repository
public class FeesDAO {

	@Autowired 
	SessionFactory sessionfactory;
	
	public List fees_display(int id)
	{

		//CAN BE USED FOR GETTING DATA OF A PARTICULAR STUDENT IN DASHBOARD
		
		//List FeesList = new ArrayList<>();
		Session session = sessionfactory.openSession();
		Transaction trans = session.beginTransaction();
		
		System.out.println("lol");
		Query q = session.createQuery("from FeesVO where studentVO_id ="+id);
		
		List FeesList = q.list();
		
		System.out.println("lilllll"+FeesList.get(0));
		

		
		trans.commit();
		session.close();
		
		return FeesList;
	}
}
