package oism;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class BookDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    
	public static boolean validate(String book_name, String author) {
		
		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from books where book_name='"+book_name+"' and author='"+author+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<book> getBook(String book_name) {
		
		ArrayList<book> book = new ArrayList<>();
		
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where book_name='"+book_name+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				String book_id = rs.getString(1);
				String book_name1 = rs.getString(2);
				String publisher = rs.getString(3);
				String author = rs.getString(4);
				String availability = rs.getString(5);
				
				book b = new book(book_id,book_name1,publisher,author,availability);
				book.add(b);
			}
			
		} catch (Exception e) {
			
		}
		
		return book;	
	}
    
    public static boolean insertbook(String book_id, String book_name, String publisher, String author, String availability) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		con = DBconnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into books values ('"+book_id+"','"+book_name+"','"+publisher+"','"+author+"','"+availability+"')";
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
    
    public static boolean updatebook(String book_id, String book_name, String publisher, String author, String availability) {
    	
    	try {
    		
    		con = DBconnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update books set book_name='"+book_name+"',publisher='"+publisher+"',author='"+author+"',availability='"+availability+"'"
    				+ "where book_id='"+book_id+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
    
    
   /* public static boolean deleteBook(String id) {
    	
    	int convId = Integer.parseInt(id);
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from books where book_id='"+convId+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
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
*/public static boolean deleteDetails(String id) {
	boolean isSuccess = false;
	try {
		con = DBconnect.getConnection();
		Statement stmt = con.createStatement();
		// SQL query to delete contact details based on the ID.
		String sql = "delete from books where book_id='" + id + "'";
		int rs = stmt.executeUpdate(sql);
		
		if (rs > 0) {
			isSuccess = true;
		} else {
			isSuccess = false;
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return isSuccess;
}
}