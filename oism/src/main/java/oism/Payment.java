package oism;

public class Payment {
	
	private int id;
	private String Name;
	private String Number;
	private String cvv;
	
	public Payment(int id, String Name, String Number, String cvv) {
		super();
		this.id = id;
		this.Name = Name;
		this.Number = Number;
		this.cvv = cvv;
	}

	public int getId() {
		return id;
	}

	

	public String getName() {
		return Name;
	}

	

	public String getNumber() {
		return Number;
	}

	
	public String getCvv() {
		return cvv;
	}

	
	
	

}