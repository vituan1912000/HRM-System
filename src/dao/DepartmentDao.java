package dao;

import java.util.List;

import entities.Department;

public interface DepartmentDao {
	public List<Department> getAllDepartment();
	public boolean addDepartment(Department d);
	public boolean updateDepartment(Department d);
	public Department getDepartmentId(String department_Id);
}
