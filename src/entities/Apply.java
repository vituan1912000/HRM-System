package entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "apply")
public class Apply {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "aId")
	private int id;
	@Column(name = "user_name")
	private String userName;
	@Column(name = "user_age")
	private int userAge;
	@Column(name = "user_address")
	private String userAddress;
	@Column(name = "job")
	private String job;

	public Apply() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Apply(int id, String userName, int userAge, String userAddress, String job) {
		super();
		this.id = id;
		this.userName = userName;
		this.userAge = userAge;
		this.userAddress = userAddress;
		this.job = job;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getUserAge() {
		return userAge;
	}

	public void setUserAge(int userAge) {
		this.userAge = userAge;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

}
