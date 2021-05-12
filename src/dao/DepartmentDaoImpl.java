package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import entities.Department;
import entities.Employee;
import entities.Job;

public class DepartmentDaoImpl implements DepartmentDao {

	private SessionFactory sessionFactory;
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public List<Department> getAllDepartment() {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			List list = session.createQuery("from Department").list();
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
	public boolean addDepartment(Department d) {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			session.save(d);
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
	public boolean updateDepartment(Department d) {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			session.update(d);
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
	public Department getDepartmentId(String department_Id) {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			Department d = (Department) session.createQuery("from Department where  department_Id = :department_Id")
					.setParameter("department_Id", department_Id)
					.uniqueResult();
			session.getTransaction().commit();
			session.close();
			return d;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.getTransaction().rollback();
			session.close();
		}
		return null;
	}
	
	


}
