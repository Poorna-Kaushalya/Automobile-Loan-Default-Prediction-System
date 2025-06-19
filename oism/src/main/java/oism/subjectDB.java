package oism;

import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;

@WebServlet("/subjectDB")
public class subjectDB  {
	private static Connection con = null;
	private static Statement stmt = null;
	
	public static boolean insertsubject(String subject_name, String subject_code, String subject_teacher,String grade, String level, String subject_description, String subject_add_date) {
	    	
	    	boolean isSuccess = false;
	    	
	    	try {
	    		con = DBconnect.getConnection();
	    		stmt = con.createStatement();
	    	    String sql = "insert into subjects values ('"+subject_name+"','"+subject_code+"','"+subject_teacher+"','"+grade+"','"+level+"','"+subject_description+"','"+subject_add_date+"')";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		} else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	 	
	    	return isSuccess;
	    }
	    
}
