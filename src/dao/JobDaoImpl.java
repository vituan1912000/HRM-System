package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import entities.Employee;
import entities.Job;

public class JobDaoImpl implements JobDao{
	private SessionFactory sessionFactory;
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public List<Job> getAllJob() {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			List list = session.createQuery("from Job").list();
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
	public boolean addJob(Job j) {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			session.save(j);
			session.getTransaction().commit();
			session.close();
			return true;
		} catch (Exception ex) {
			// TODO: handle exception
			ex.printStackTrace();
			session.getTransaction().rollback();
			session.close();
		}
		return false;
	}
	@Override
	public boolean updateJob(Job j) {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			session.update(j);
			session.getTransaction().commit();
			session.close();
			return true;
		} catch (Exception ex) {
			// TODO: handle exception
			ex.printStackTrace();
			session.getTransaction().rollback();
			session.close();
		}
		return false;
	}
	@Override
	public Job getDecribetion(String job_Id) {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			Job j = (Job) session.createQuery("from Job where  job_Id = :job_Id")
					.setParameter("job_Id", job_Id)
					.uniqueResult();
			session.getTransaction().commit();
			session.close();
			return j;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.getTransaction().rollback();
			session.close();
		}
		return null;
	}

}
