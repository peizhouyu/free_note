package cn.free.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import cn.free.bean.Note;
import cn.free.util.HibernateSessionFactory;

public class NoteDAO<T> {
	SessionFactory factory = HibernateSessionFactory.getSessionFactory();
	Session session ;
	
	//添加笔记
	public Integer add_note(Note note) {
		int id;
		session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		id = (int) session.save(note);
		transaction.commit();
		System.out.println("笔记写入位置"+id);
		session.close();
		return id;
	}
	
	//查找多个Entity
	
	@SuppressWarnings("unchecked")
	public List<T> list(String hql) {

		Session session = HibernateSessionFactory.getSessionFactory()
				.openSession();
		try {
			session.beginTransaction();
			return session.createQuery(hql).list();
		} finally {
			session.getTransaction().commit();
			session.close();
		}
	}
	
	//查找单个Entity
	@SuppressWarnings("unchecked")
	public T find(Class<? extends T> clazz, Serializable id) {

		Session session = HibernateSessionFactory.getSessionFactory()
				.openSession();
		try {
			session.beginTransaction();
			return (T) session.get(clazz, id);
		} finally {
			session.getTransaction().commit();
			session.close();
		}
	}

	
	//删除
	public void delete(T object) {

		Session session = HibernateSessionFactory.getSessionFactory()
				.openSession();

		try {
			session.beginTransaction();
			session.delete(object);
			session.getTransaction().commit();
		} catch (Exception e) {
			session.getTransaction().rollback();
		} finally {
			session.close();
		}
	}
	
	//更新数据库
	
	public void update(T object) {

		Session session = HibernateSessionFactory.getSessionFactory()
				.openSession();

		try {
			session.beginTransaction();
			session.update(object);
			session.getTransaction().commit();
		} catch (Exception e) {
			session.getTransaction().rollback();
		} finally {
			session.close();
		}
	}
	
	
	
	
}
