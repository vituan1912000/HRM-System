package entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="account")
public class Account {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)	
	@Column(name = "id")
	private int id;
	@Column(name = "user_name")
	private String user_name;
	@Column(name = "pass")
	private String pass;
	@Column(name = "status")
	private boolean status;
	@JoinColumn(name = "employee_Id")
	@OneToOne
	private Employee eId;
	public Account() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Account(int id, String user_name, String pass, boolean status, Employee eId) {
		super();
		this.id = id;
		this.user_name = user_name;
		this.pass = pass;
		this.status = status;
		this.eId = eId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public Employee geteId() {
		return eId;
	}
	public void seteId(Employee eId) {
		this.eId = eId;
	}
	
	
	
}
