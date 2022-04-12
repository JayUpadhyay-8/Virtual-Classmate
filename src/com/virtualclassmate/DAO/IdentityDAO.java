package com.virtualclassmate.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.virtualclassmate.VO.IdentityVO;
@Repository
public class IdentityDAO {
	@Autowired 
	SessionFactory sessionfactory;
	
	public List editidentity(IdentityVO identityVO)
	{
		
		List editList = new ArrayList<>();
		Session session = sessionfactory.openSession();
		Transaction trans = session.beginTransaction();
		
		Query q = session.createQuery("from IdentityVO where id ="+identityVO.getId());
		editList = q.list();
		

		
		trans.commit();
		session.close();
		
		return editList;
	}
}
