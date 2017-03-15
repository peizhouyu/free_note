package cn.free.dao;



import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import cn.free.bean.User;
import cn.free.util.HibernateSessionFactory;

public class UserDAO {
	
	SessionFactory factory = HibernateSessionFactory.getSessionFactory();
	Session session ;
	Transaction transaction;
	
	@SuppressWarnings("unchecked")
	public List<User> getUser(){
		session = factory.openSession();
		
		List<User> user = new ArrayList<User>();
		 user = session.createQuery("from User").list();
		 return user;
	}
	
	public void addUser(User user) {
		session = factory.openSession();
		transaction = session.beginTransaction();
		session.save(user);
		transaction.commit();
		session.close();
		
	}
	
	public User login(String account, String password){
		User entity = null;
		session = factory.openSession();
		Query query = session.createQuery("from User u where u.account=:account and u.password=:password");
		entity = (User) query.setParameter("account", account).setParameter("password", password).uniqueResult();
		return entity;
		
	}
	
}
