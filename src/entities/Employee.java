package entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "employee")
public class Employee {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)	
	@Column(name = "employee_Id")
	private Integer id;
	@Column(name = "name")
	private String name;
	@Column(name = "age")
	private int age;
	@Column(name = "address")
	private String address;
	@JoinColumn(name = "job_id")
	@ManyToOne
	private Job job_id;
	@Column(name = "salary")
	private int salary;
	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Employee(Integer id, String name, int age, String address, Job job_id, int salary) {
		super();
		this.id = id;
		this.name = name;
		this.age = age;
		this.address = address;
		this.job_id = job_id;
		this.salary = salary;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Job getJob_id() {
		return job_id;
	}
	public void setJob_id(Job job_id) {
		this.job_id = job_id;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}

	
	
	
}

