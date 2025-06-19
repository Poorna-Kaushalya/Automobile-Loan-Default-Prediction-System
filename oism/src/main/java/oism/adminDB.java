package oism;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class adminDB {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    
	public static boolean validate(String username, String password) {
		
		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from admin where username='"+username+"' and password='"+password+"'";
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
	
	public static List<admin> getadmin(String userName) {
		
		ArrayList<admin> admin = new ArrayList<>();
		
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from admin where username='"+userName+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);
				
				admin adm = new admin(id,name,email,phone,username,password);
				admin.add(adm);
			}
			
		} catch (Exception e) {
			
		}
		
		return admin;	
	}
	
	 public static boolean insertadmin(String name, String email, String phone, String username, String password) {
	    	
	    	boolean isSuccess = false;
	    	
	    	try {
	    		con = DBconnect.getConnection();
	    		stmt = con.createStatement();
	    	    String sql = "insert into admin values (0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
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
	    
	    public static boolean updateadmin(String id, String name, String email, String phone, String username, String password) {
	    	
	    	try {
	    		
	    		con = DBconnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "update admin set adminname='"+name+"',email='"+email+"',phone='"+phone+"',username='"+username+"',password='"+password+"'"
	    				+ "where adminid='"+id+"'";
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
	 
	    public static List<admin> getadminDetails(String Id) {
	    	
	    	int convertedID = Integer.parseInt(Id);
	    	
	    	ArrayList<admin> adm = new ArrayList<>();
	    	
	    	try {
	    		
	    		con = DBconnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "select * from admin where adminid='"+convertedID+"'";
	    		rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int id = rs.getInt(1);
	    			String name = rs.getString(2);
	    			String email = rs.getString(3);
	    			String phone = rs.getString(4);
	    			String username = rs.getString(5);
	    			String password = rs.getString(6);
	    			
	    			admin c = new admin(id,name,email,phone,username,password);
	    			adm.add(c);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
	    	return adm;	
	    }
	    
	    
	    public static boolean deleteadmin(String id) {
	    	
	    	int convId = Integer.parseInt(id);
	    	
	    	try {
	    		
	    		con = DBconnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "delete from admin where adminid='"+convId+"'";
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
	    
	    
	  // start subject section ------------------------------------
	    
	    public static boolean deletesubject(String id) {
	        
	        try {
	            con = DBconnect.getConnection();
	            stmt = con.createStatement();
	            String sql = "delete from subjects where subjectcode='"+id+"'";
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

	    
	    
	    public static boolean updatesubject(String sname, String scode, String teacher, String grade, String level, String description, String date) {
	    	
	    	try {
	    		
	    		con = DBconnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "update subjects set subjectname='"+sname+"',teacher='"+teacher+"',grade='"+grade+"',straem='"+level+"',description='"+description+"',date='"+date+"'"+ "where subjectcode='"+scode+"'";
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
	    
	    public static List<subject> getsubDetails(String scode) {
	        ArrayList<subject> sub = new ArrayList<>();
	        try {
	            con = DBconnect.getConnection();
	            stmt = con.createStatement();
	            String sql = "select * from subjects where subjectcode='" + scode + "'";
	            rs = stmt.executeQuery(sql);

	            while (rs.next()) {
	                String subject_name = rs.getString(1);
	                String subject_code = rs.getString(2);
	                String subject_teacher = rs.getString(3);
	                String grade = rs.getString(4);
	                String level = rs.getString(5);
	                String subject_description = rs.getString(6);
	                String subject_add_date = rs.getString(7);

	                subject c = new subject(subject_name, subject_code, subject_teacher, grade, level, subject_description, subject_add_date);
	                sub.add(c);
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return sub;
	    }

	}