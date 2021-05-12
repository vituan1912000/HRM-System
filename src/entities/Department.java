package entities;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "department")
public class Department {
	@Id
	@Column(name = "department_Id")
	private String department_Id;
	@Column(name = "department_name")
	private String deName;
	public Department() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Department(String department_Id, String deName) {
		super();
		this.department_Id = department_Id;
		this.deName = deName;
	}
	public String getDepartment_Id() {
		return department_Id;
	}
	public void setDepartment_Id(String department_Id) {
		this.department_Id = department_Id;
	}
	public String getDeName() {
		return deName;
	}
	public void setDeName(String deName) {
		this.deName = deName;
	}


	
}
