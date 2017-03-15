package cn.free.service;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import cn.free.bean.Note;
import cn.free.bean.User;
import cn.free.dao.NoteDAO;
import cn.free.util.HibernateSessionFactory;

public class NoteService {
	
	//根据user_name 得到id值
	public Integer getUserId(String user_name) {
		//System.out.println(user_name);
		SessionFactory factory = HibernateSessionFactory.getSessionFactory();
		Session session = factory.openSession() ;
		
		String hql = "from User as u where u.account = :account";
		Query query = session.createQuery(hql);
		query.setParameter("account", user_name);
		List results = query.list();
		User user = (User) results.get(0);
		
	
		//System.out.println(results);
		System.out.println(user.getId());
		return user.getId();
	}
	
	//添加笔记
	public boolean note_add(Note note) {
		Integer id;
		NoteDAO noteDAO = new NoteDAO();
		id = noteDAO.add_note(note);
		
		if (id!=null) {
			return true;
		}else {
			return false;
		}
	}
	
	
	
	
}
