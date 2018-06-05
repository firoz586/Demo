package com.model;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

import com.bean.FirstBean;
import com.bean.Registration;

public class FirstModel
{

	public int logincheck(FirstBean fb) 
	{
		int i=0;
		
		SessionFactory sf=new AnnotationConfiguration().configure().buildSessionFactory();
		org.hibernate.Session ss=sf.openSession();
		Transaction tx1=ss.beginTransaction();
		
		System.out.println(fb.getId());
		System.out.println(fb.getPassword());
		Criteria ct=ss.createCriteria(FirstBean.class);
		
		ct.add(Restrictions.eq("id",fb.getId()));
		ct.add(Restrictions.eq("password",fb.getPassword()));
		
		
		List<FirstBean> list=ct.list();
		if(list.isEmpty())
		{
			i=0;
			System.out.println("Logion failllll");
		}
		else 
		{
			i=1;
		}
		
		tx1.commit();
		ss.close();

	return i;
	}

	public int insert(Registration r) 
	{
		int i=0;
		
		SessionFactory sf= new AnnotationConfiguration().configure().buildSessionFactory();
		Session ss=sf.openSession();
		
		 Transaction tt = ss.beginTransaction();
		 ss.save(r);
		 i=1;
	  tt.commit();
	  ss.close();
	
		return i;
	}
	
	public int userlogin(Registration fb) 
	{
		int i=0;
		
		System.out.println("email id "+fb.getEmailid());
		
		SessionFactory sf=new AnnotationConfiguration().configure().buildSessionFactory();
		org.hibernate.Session ss=sf.openSession();
		Transaction tx1=ss.beginTransaction();
		
		System.out.println(fb.getEmailid());
		System.out.println(fb.getPassword());
		Criteria ct=ss.createCriteria(Registration.class);
		
		
		ct.add(Restrictions.eq("emailid",fb.getEmailid()));
		ct.add(Restrictions.eq("password",fb.getPassword()));
		
		
		List<Registration> list=ct.list();
		if(list.isEmpty())
		{
			i=0;
			System.out.println("Logion failllll");
		}
		else 
		{
			i=1;
		}
		
		tx1.commit();
		ss.close();

	return i;
	}
	
	
	
	public List<Registration> ViewUsers()
	{
		
		 
			SessionFactory sf= new AnnotationConfiguration().configure().buildSessionFactory();
			
			Session ss=sf.openSession();
			
			Criteria ct = ss.createCriteria(Registration.class);
			
			
		     List<Registration>list=(List<Registration>)ct.list();
		   
			ss.close();
			return list;
		
			
		}
	
	
	
	
	
	
	
}