package entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="messages")
public class Message {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)	
	@Column(name = "messId")
	private int messId;
	@Column(name="mess")
	private String message;
	public Message() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Message(int messId, String message) {
		super();
		this.messId = messId;
		this.message = message;
	}
	public int getMessId() {
		return messId;
	}
	public void setMessId(int messId) {
		this.messId = messId;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	
}
