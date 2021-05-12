package dao;

import java.util.List;
import entities.Employee;



public interface EmployeeDAO {
	public List<Employee> getAllEmployee(); 
	public Employee getEmployeeById(Integer id);
	public boolean insertEmployee(Employee e);
	public boolean update(Employee e);
	public boolean delete(Integer id);
}
