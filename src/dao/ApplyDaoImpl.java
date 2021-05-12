package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import entities.Apply;

public class ApplyDaoImpl implements ApplyDao{
	private SessionFactory sessionFactory;
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public List<Apply> displayRequest() {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			List list = session.createQuery("from Apply").list();
			session.getTransaction().commit();
			session.close();
			return list;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.getTransaction().rollback();
			session.close();
		}
		return null;
	}
	@Override
	public boolean addApply(Apply a) {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			session.save(a);
			session.getTransaction().commit();
			session.close();
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.getTransaction().rollback();
			session.close();
		}
		return false;
	}

}
