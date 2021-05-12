package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import entities.Account;

public class AccountDaoimpl implements AccountDao{
	private SessionFactory sessionFactory;

	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public List<Account> getUser() {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			List list = session.createQuery("from Account").list();
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
	public boolean ifAdmin(String userName, String pass,boolean status) {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			Account a = (Account) session.createQuery("from Account A where A.user_name = :userName and status=1")
					.setParameter("userName", userName).uniqueResult();
			
			if(a!=null && a.getPass().equals(pass)) {
				return true;
			}
			session.getTransaction().commit();
			session.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.getTransaction().rollback();
			session.close();
		}
		return false;
	}
	@Override
	public boolean ifUser(String userName,String pass,boolean status) {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			Account a = (Account) session.createQuery("from Account A where A.user_name = :userName and status=0")
					.setParameter("userName", userName).uniqueResult();
			
			if(a!=null && a.getPass().equals(pass)) {
				return true;
			}
			session.getTransaction().commit();
			session.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.getTransaction().rollback();
			session.close();
		}
		return false;
	}


}
