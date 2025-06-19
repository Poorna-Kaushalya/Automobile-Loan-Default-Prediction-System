package oism;

public class Contact {
	
	private int id;
	private String name;
	private String number;
	private String email;
	private String subject;
	private String message;
	

	public Contact(int id, String name, String number, String email, String subject, String message) {
	
	this.id = id;
	this.name = name;
	this.number = number;
	this.email = email;
	this.subject = subject;
	this.message = message;
}


	public int getId() {
		return id;
	}


	


	public String getName() {
		return name;
	}


	


	public String getNumber() {
		return number;
	}


	


	public String getEmail() {
		return email;
	}


	


	public String getSubject() {
		return subject;
	}


	


	public String getMessage() {
		return message;
	}


	
}
