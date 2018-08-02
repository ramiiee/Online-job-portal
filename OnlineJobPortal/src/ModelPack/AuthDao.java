package ModelPack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AuthDao {

	public static UserBean getUserById (int userId,String type){
		UserBean user = new UserBean();
		try
		{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/jobportal?zeroDateTimeBehavior=convertToNull","root","root");  
		      
		PreparedStatement ps=con.prepareStatement(  
		"select * from login where userid=? and type=?");   
		ps.setInt(1,userId);
		ps.setString(2,type);
		ResultSet rs = ps.executeQuery();
		      
		if(rs.next()){
            user.setUsername(rs.getString("username"));
            user.setPassword(rs.getString("password"));
            user.setType(rs.getString("type"));
            user.setAuthorization(rs.getString("authorization"));
            if(rs.getString("type").equalsIgnoreCase("jobseeker")){
            	PreparedStatement pss=con.prepareStatement("select firstname,lastname from jobseeker where username=?");   
				pss.setString(1,rs.getString("username"));  
				ResultSet rss = pss.executeQuery();
				      
				if(rss.next()){
					user.setFirstname(rss.getString("firstname"));
		            user.setLastname(rss.getString("lastname"));
		            return user;
				}
            	
            }else if(rs.getString("type").equalsIgnoreCase("employer")){
            	PreparedStatement pss=con.prepareStatement("select cmpname,contactname from employer where username=?");   
				pss.setString(1,rs.getString("username"));  
				ResultSet rss = pss.executeQuery();
				      
				if(rss.next()){
					user.setCompanyname(rss.getString("cmpname"));
		            user.setContactname(rss.getString("contactname"));
		            return user;
				} 	
            }
		}
		}
		catch(Exception e)
		{System.out.println(e);}  
		return null;
	}
	
	public static boolean checkUserPass(String username,String password,String type){
		boolean status=false; 
		try
		{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/jobportal?zeroDateTimeBehavior=convertToNull","root","root");  
		      
		PreparedStatement ps=con.prepareStatement(  
		"select * from login where username=? and password=? and type=?");   
		ps.setString(1,username);
		ps.setString(2,password);
		ps.setString(3,type);
		ResultSet rs = ps.executeQuery();
		status=rs.next();
		}
		catch(Exception e)
		{System.out.println(e);}  
		return status;
	}
	
	public static boolean checkAdmin(String username,String password){
		boolean status=false; 
		try
		{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/jobportal?zeroDateTimeBehavior=convertToNull","root","root");  
		      
		PreparedStatement ps=con.prepareStatement(  
		"select * from adminuser where username=? and password=?");   
		ps.setString(1,username);
		ps.setString(2,password);
		ResultSet rs = ps.executeQuery();
		status=rs.next();
		}
		catch(Exception e)
		{System.out.println(e);}  
		return status;
	}
	
	public static boolean checkJskUserName(String username){
		try
		{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/jobportal?zeroDateTimeBehavior=convertToNull","root","root");  
		      
		PreparedStatement ps=con.prepareStatement(  
		"select * from jobseeker where username=?");   
		ps.setString(1,username);  
		ResultSet rs = ps.executeQuery();
		      
		if(rs.next()){
			if(username.equals(rs.getString("username"))) return false;            
		}
		}
		catch(Exception e)
		{System.out.println(e);}  
		return true;
	}
	
	public static boolean checkEmpUserName(String username){
		try
		{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/jobportal?zeroDateTimeBehavior=convertToNull","root","root");  
		      
		PreparedStatement ps=con.prepareStatement(  
		"select * from employer where username=?");   
		ps.setString(1,username);  
		ResultSet rs = ps.executeQuery();
		      
		if(rs.next()){
			if(username.equals(rs.getString("username"))) return false;            
		}
		}
		catch(Exception e)
		{System.out.println(e);}  
		return true;
	}
	
	public static boolean addNewJobseeker(String username,String password,String firstname,String lastname,String contactno,String gender,
			String dob,String email,String education,String city,String state,String workexp,String category,String resumefile){  
		try
		{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/jobportal?zeroDateTimeBehavior=convertToNull","root","root");  
		      
		PreparedStatement ps=con.prepareStatement(  
		"insert into jobseeker(username,firstname,lastname,contactno,gender,dob,email,education,city,state,workexp,category,resumefile) values (?,?,?,?,?,?,?,?,?,?,?,?,?)");   
		ps.setString(1,username);  
		ps.setString(2,firstname);
		ps.setString(3,lastname);  
		ps.setString(4,contactno);
		ps.setString(5,gender);
		ps.setString(6,dob);  
		ps.setString(7,email);
		ps.setString(8,education);
		ps.setString(9,city);
		ps.setString(10,state);  
		ps.setString(11,workexp);
		ps.setString(12,category);
		ps.setString(13,resumefile);
		int i = ps.executeUpdate();
		if(i>0){
			ps=con.prepareStatement("select jskid from jobseeker where username=?");   
			ps.setString(1,username);  
			ResultSet rs = ps.executeQuery();
			      
			if(rs.next()){
				ps=con.prepareStatement("insert into login(userid,username,password,type,authorization) values (?,?,?,?,?)");   
				ps.setInt(1,rs.getInt("jskid"));  
				ps.setString(2,username);
				ps.setString(3,password);
				ps.setString(4,"Jobseeker");
				ps.setString(5,"Pending");
				int j = ps.executeUpdate();
				if(j>0) return true;
			}
}
		}
		catch(Exception e)
		{System.out.println(e);}  
		return false;
	}
	
	public static boolean addNewEmployer(String username,String password,String cmpname,String contactname,String contactno,String email,String city,String state,String category){  
		try
		{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/jobportal?zeroDateTimeBehavior=convertToNull","root","root");  
		      
		PreparedStatement ps=con.prepareStatement(  
		"insert into employer(username,cmpname,contactname,contactno,email,city,state,category) values (?,?,?,?,?,?,?,?)");
		ps.setString(1,username);
		ps.setString(2,cmpname);
		ps.setString(3,contactname);  
		ps.setString(4,contactno);  
		ps.setString(5,email);
		ps.setString(6,city);
		ps.setString(7,state);  
		ps.setString(8,category);
		int i = ps.executeUpdate();
		if(i>0){
			ps=con.prepareStatement("select empid from employer where username=?");   
					ps.setString(1,username);  
					ResultSet rs = ps.executeQuery();
					      
					if(rs.next()){
						ps=con.prepareStatement("insert into login(userid,username,password,type,authorization) values (?,?,?,?,?)");   
						ps.setInt(1,rs.getInt("empid"));  
						ps.setString(2,username);
						ps.setString(3,password);
						ps.setString(4,"Employer");
						ps.setString(5,"Pending");
						int j = ps.executeUpdate();
						if(j>0) return true;
					}
		}
		}
		catch(Exception e)
		{System.out.println(e);}  
		return false;
	}
	
	public static int getUserId(String username,String type){
		try
		{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/jobportal?zeroDateTimeBehavior=convertToNull","root","root");  
		      
		PreparedStatement ps=con.prepareStatement(  
		"select * from login where username=? and type=?");   
		ps.setString(1,username);
		ps.setString(2,type); 
		ResultSet rs = ps.executeQuery();
		      
		if(rs.next()){
			int userid = rs.getInt("userid");
			return userid;
		}
		}
		catch(Exception e)
		{System.out.println(e);}  
		return 0;
	}
}
