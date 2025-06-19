package oism;

import java.sql.Connection;
import java.sql.Statement;

public class PaymentDB {

	private static Connection con ;
	
	
	
	
	public static boolean insertpayment(String Name, String Number, String cvv) {
	    	
	    	boolean isSuccess = false;
	    
	    	
	    	try {
	    		
	    		con = DBconnect.getConnection();
	    		 
	    		 Statement stmt = con.createStatement();
	    		
	     String sql = "insert into payment values (0,'"+Name+"','"+Number+"','"+cvv+"')";
	    
	     		
	    
	     		int rs = stmt.executeUpdate(sql);

	     		if(rs > 0) {
	     			isSuccess = true;
	     		}
	     		else {
	     			isSuccess = false;
	     		}
	     		
	    
	    }
	    	
	     	catch (Exception e) {
	     		e.printStackTrace();
	     	}
	  	
	     	return isSuccess;
	    		    

	    
	    	

	 }
}
