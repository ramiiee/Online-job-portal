package ModelPack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class AdminDao {

	public static boolean updateStatus(int userid,String type,String status){  
		try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal?zeroDateTimeBehavior=convertToNull","root","root");
        PreparedStatement ps= con.prepareStatement("update login set authorization=? where userid=? and type=?");
        ps.setString(1, status);
        ps.setInt(2, userid);
        ps.setString(3, type);
        
        int i = ps.executeUpdate();
        if(i>0) return true;
        
        }catch(Exception e)
		{System.out.println(e);}  
		return false;
	}
	
	public static boolean deleteJobseeker(int userid){  
		try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal?zeroDateTimeBehavior=convertToNull","root","root");
        PreparedStatement ps= con.prepareStatement("delete from jobseeker where jskid=?");
        ps.setInt(1, userid);
        
        int i = ps.executeUpdate();
        if(i>0) {
        	PreparedStatement pss= con.prepareStatement("delete from login where userid=? and type=?");
        	pss.setInt(1, userid);
        	pss.setString(2, "Jobseeker");
        	
        	int j = pss.executeUpdate();
        	if(j>0) return true;
        }
        }catch(Exception e)
		{System.out.println(e);}  
		return false;
	}
	
	public static boolean deleteEmployer(int userid){  
		try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal?zeroDateTimeBehavior=convertToNull","root","root");
        PreparedStatement ps= con.prepareStatement("delete from employer where empid=?");
        ps.setInt(1, userid);
        
        int i = ps.executeUpdate();
        if(i>0) {
        	PreparedStatement pss= con.prepareStatement("delete from login where userid=? and type=?");
        	pss.setInt(1, userid);
        	pss.setString(2, "Employer");
        	
        	int j = pss.executeUpdate();
        	if(j>0) return true;
        }
        }catch(Exception e)
		{System.out.println(e);}  
		return false;
	}
	
	public static boolean updateJobseeker(String fname, String lname, String contactno, String gender, String dob, String email, String education, String city, 
			String state, String workexp, String category, int userid){  
		try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal?zeroDateTimeBehavior=convertToNull","root","root");
        PreparedStatement ps= con.prepareStatement("update jobseeker set firstname=?,lastname=?,contactno=?,gender=?,dob=?,email=?,education=?,city=?,state=?,workexp=?,category=? where jskid=?");
        ps.setString(1, fname);
        ps.setString(2, lname);
        ps.setString(3, contactno);
        ps.setString(4, gender);
        ps.setString(5, dob);
        ps.setString(6, email);
        ps.setString(7, education);
        ps.setString(8, city);
        ps.setString(9, state);
        ps.setString(10, workexp);
        ps.setString(11, category);
        ps.setInt(12, userid);
        
        int i = ps.executeUpdate();
        if(i>0) return true;
        
        }catch(Exception e)
		{System.out.println(e);}  
		return false;
	}
	
	public static boolean updateEmployer(String cmpname, String contactname, String contactno, String email, String city, String state, String category, int userid){  
		try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal?zeroDateTimeBehavior=convertToNull","root","root");
        PreparedStatement ps= con.prepareStatement("update employer set cmpname=?,contactname=?,contactno=?,email=?,city=?,state=?,category=? where empid=?");
        ps.setString(1, cmpname);
        ps.setString(2, contactname);
        ps.setString(3, contactno);
        ps.setString(4, email);
        ps.setString(5, city);
        ps.setString(6, state);
        ps.setString(7, category);
        ps.setInt(8, userid);
        
        int i = ps.executeUpdate();
        if(i>0) return true;
        
        }catch(Exception e)
		{System.out.println(e);}  
		return false;
	}
	
}
