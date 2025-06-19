package oism;

public class Results {
	private String id ;
	private String Name ;
	private String Class1 ;
	private String Subject ;
    private String Marks ;
    
	public Results(String id1, String name, String class1, String subject, String marks1) {
		super();
		id = id1;
		Name = name;
		Class1 = class1;
		Subject = subject;
		Marks = marks1;
	}

	public String getId() {
		return id;
	}

	public String getName() {
		return Name;
	}

	public String getClass1() {
		return Class1;
	}

	public String getSubject() {
		return Subject;
	}

	public String getMarks() {
		return Marks;
	}

	
    
    
	

}
