package entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "job")
public class Job {
	@Id
	@Column(name = "job_Id")
	private String job_Id;
	@Column(name = "job_name")
	private String jobName;
	@JoinColumn(name = "department_Id")
	@ManyToOne
	private Department department_Id;
	@Column(name = "salary")
	private double salary;
	@Column(name="description")
	private String description;

	public Job() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Job(String jobName, String job_Id, Department department_Id, double salary, String description) {
		super();
		this.jobName = jobName;
		this.job_Id = job_Id;
		this.department_Id = department_Id;
		this.salary = salary;
		this.description = description;
	}

	public String getJobName() {
		return jobName;
	}

	public void setJobName(String jobName) {
		this.jobName = jobName;
	}

	public String getJob_Id() {
		return job_Id;
	}

	public void setJob_Id(String job_Id) {
		this.job_Id = job_Id;
	}

	public Department getDepartment_Id() {
		return department_Id;
	}

	public void setDepartment_Id(Department department_Id) {
		this.department_Id = department_Id;
	}

	public double getSalary() {
		return salary;
	}

	public void setSalary(double salary) {
		this.salary = salary;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	
	

}
