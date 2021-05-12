package dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import entities.Employee;

public class EmployeeDAOImpl implements EmployeeDAO{
	
	private SessionFactory sessionFactory;
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<Employee> getAllEmployee() {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			List list = session.createQuery("from Employee").list();
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
	public Employee getEmployeeById(Integer id) {
		Session session = sessionFactory.openSession();
		
		try {
			session.beginTransaction();
			Employee s = (Employee) session.createQuery("from Employee where  id = :id")
					.setParameter("id", id)
					.uniqueResult();
			session.getTransaction().commit();
			session.close();
			return s;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.getTransaction().rollback();
			session.close();
		}
		return null;
	}

	@Override
	public boolean insertEmployee(Employee e) {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			session.save(e);
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
	public boolean update(Employee e) {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			session.update(e);
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
	public boolean delete(Integer id) {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			int i = session.createQuery("delete from Employee where id= :id")
					.setParameter("id", id)
					.executeUpdate();
			session.getTransaction().commit();
			session.close();
			if(i>0)
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
