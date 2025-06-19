package oism;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ContactDB {
	
	private static Connection con;
	
	// Method to insert contact details into the database.
	public static boolean insertcontact(String name, String number, String email, String subject, String message) {
    	boolean isSuccess = false;
    	
    	try {
    		// Get a database connection from DBconnect.
    		con = DBconnect.getConnection();
    		Statement stmt = con.createStatement();
    		
    		// SQL query to insert contact details.
    		String sql = "insert into contact values (0,'" + name + "','" + number + "','" + email + "','" + subject + "','" + message + "')";
    
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

	// Method to update contact details into the database.
	public static boolean updatecontact(String id, String name, String number, String email, String subject, String message) {
		boolean isSuccess = false;
		try {
			con = DBconnect.getConnection();
			Statement stmt = con.createStatement();
			// SQL query to update contact details based on the ID.
			String sql = "update contact set name='" + name + "',number='" + number + "',email='" + email + "',subject='" + subject + "',message='" + message + "' where id='" + id + "'";
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

	// Method to select contact details based on the ID.
	public static List<Contact> selectContactDetails(String Id) {
		int convertedID = Integer.parseInt(Id);
		ArrayList<Contact> cont = new ArrayList<>();
		
		try {
			con = DBconnect.getConnection();
			Statement stmt = con.createStatement();
			// SQL query to select contact details based on the ID.
			String sql = "select * from contact where id='" + convertedID + "'";
			ResultSet rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String number = rs.getString(3);
				String email = rs.getString(4);
				String subject = rs.getString(5);
				String message = rs.getString(6);
				
				Contact c = new Contact(id, name, number, email, subject, message);
				cont.add(c);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cont;
	}

	// Method to delete contact details based on the ID.
	public static boolean deleteDetails(String id) {
		boolean isSuccess = false;
		try {
			con = DBconnect.getConnection();
			Statement stmt = con.createStatement();
			// SQL query to delete contact details based on the ID.
			String sql = "delete from contact where id='" + id + "'";
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



/*
 public static List<Contact> selectContactDetails(String Id) {
    int convertedID = Integer.parseInt(Id);
    ArrayList<Contact> cus = new ArrayList<>();

    try (Connection con = DBconnect.getConnection();
         PreparedStatement pstmt = con.prepareStatement("SELECT * FROM contact WHERE id = ?")) {

        pstmt.setInt(1, convertedID);
        ResultSet rs = pstmt.executeQuery();

        while (rs.next()) {
            int id = rs.getInt("id");
            String name = rs.getString("name");
            String number = rs.getString("number");
            String email = rs.getString("email");
            String subject = rs.getString("subject");
            String message = rs.getString("message");

            Contact c = new Contact(id, name, number, email, subject, message);
            cus.add(c);
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return cus;
}

 */

/*public static boolean deleteDetails(String id) {
	
	int convId = Integer.parseInt(id);
	
	boolean isSuccess = false;
	try {
		
		con = DBconnect.getConnection();
		Statement stmt = con.createStatement();
		String sql = "delete from contact where id='"+convId+"'";
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
}*/




