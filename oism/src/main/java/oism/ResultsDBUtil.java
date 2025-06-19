package oism;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ResultsDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null ; 
	
	
	public static List<Results> validate (String id , String Name  ){
		
		ArrayList<Results> res = new ArrayList<>();
		 
		
		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from results where Id = '"+id+"' and Name = '"+Name+"'";
		    rs = stmt.executeQuery(sql);
			
			if( rs.next()) {
				String id1 = rs.getString(1);
				String name1 = rs.getString(2);
				String class1 = rs.getString(3);
				String subject1 = rs.getString(4);
				String marks1 = rs.getString(5);
				
				Results R = new Results (id1,name1,class1,subject1,marks1);
				res.add(R);
				
			}
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return res;
		
	}
	
	public static boolean MarksEnter(String id , String name , String class1 , String subject , String marks) {
		
		boolean isSuccess = false;
		
				try {
					con = DBconnect.getConnection();
					stmt = con.createStatement();
					String sql = "insert into results values('"+id+"','"+name+"','"+class1+"','"+subject+"','"+marks+"')";
					int rs = stmt.executeUpdate(sql);
					
					if(rs > 0) {
						isSuccess = true;
					}else {
						isSuccess = false;
					}
					
				}
				catch(Exception e) {
					e.printStackTrace();
				}
		
		return isSuccess;
	}
	
	public static boolean updateMarks(String id , String name , String clss, String subject , String marks) {
		
		
		boolean isSuccess = false;
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "update results set class = '"+clss+"', Subject = '"+subject+"' , marks = '"+marks+"'"+ "where Id = '"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess  = true;
			}else {
				isSuccess = false;
			}
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	
	
	
	
	public static boolean DeleteMarks(String id) {
		
		boolean isSuccess = false;;
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from results where id='"+id+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r > 0) {
				isSuccess   = true;
			}else {
				isSuccess = false;
			}
			
			
		}
		catch (Exception e) {
			e.printStackTrace();
			
		}
		
		
		return isSuccess;
	}

	public static List<Results> getMarks(String index) {
			
		ArrayList<Results> res = new ArrayList<>();
		
		try {
			
			con =DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from results where id ='"+index+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String id = rs.getString(1);
				String name = rs.getString(2);
				String clss = rs.getString(3);
				String subject = rs.getString(4);
				String marks = rs.getString(5);
				
				Results r = new Results (id,name,clss,subject,marks);
				res.add(r);
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return res;
	}


	
	


}
