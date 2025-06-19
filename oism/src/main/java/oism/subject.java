package oism;

public class subject {
	private String subject_name;
	private String subject_code;
	private String subject_teacher;
	private String grade;
	private String level;
    private String subject_description;
    private String subject_add_date;
    
	public subject(String subject_name, String subject_code, String subject_teacher,String grade, String level,String subject_description, String subject_add_date) {
		this.subject_name = subject_name;
		this.subject_code = subject_code;
		this.subject_teacher = subject_teacher;
		this.grade = grade;
		this.level = level;
		this.subject_description = subject_description;
		this.subject_add_date = subject_add_date;
	}

	public String getSubject_name() {
		return subject_name;
	}

	public String getSubject_code() {
		return subject_code;
	}

	public String getSubject_teacher() {
		return subject_teacher;
	}

	public String grade() {
		return grade;
	}
	
	public String getLevel() {
		return level;
	}

	public String getSubject_description() {
		return subject_description;
	}

	public String getSubject_add_date() {
		return subject_add_date;
	}
   
	
}
