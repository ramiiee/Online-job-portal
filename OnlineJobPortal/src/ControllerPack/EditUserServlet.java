package ControllerPack;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ModelPack.AdminDao;

/**
 * Servlet implementation class EditUserServlet
 */
@WebServlet("/EditUserServlet")
public class EditUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        int id = Integer.parseInt(request.getParameter("userid"));
        String type=request.getParameter("type");
        
        boolean result = false;
        if(type.equalsIgnoreCase("jobseeker")){
            String fname=request.getParameter("jfname");
            String lname=request.getParameter("jlname");
            String contact=request.getParameter("jcontact");
            String gender=request.getParameter("jgender");
            String dob=request.getParameter("jdob");
            String email=request.getParameter("jemail");
            String education=request.getParameter("jeducation");
            String city=request.getParameter("jcity");
            String state=request.getParameter("jstate");
            String workexp=request.getParameter("jworkexp");
            String category=request.getParameter("jcategory");
        	result = AdminDao.updateJobseeker(fname,lname,contact,gender,dob,email,education,city,state,workexp,category,id);
        	if(result){		
    			out.println("<script type=\"text/javascript\">");
    	        out.println("alert('Updated Successfully!')"); 
    	        out.println("location='Admin/alljobseekers.jsp';");
    	        out.println("</script>");
    			RequestDispatcher rd=request.getRequestDispatcher("Admin/alljobseekers.jsp");  
    	        rd.include(request,response);
        	}else{
    			out.println("<script type=\"text/javascript\">");
    	        out.println("alert('Error while updating!')"); 
    	        out.println("location='Admin/alljobseekers.jsp';");
    	        out.println("</script>");
    		RequestDispatcher rd=request.getRequestDispatcher("Admin/alljobseekers.jsp");  
            rd.include(request,response);
    		}
        }else {
        	String cmpname=request.getParameter("ecmpname");
            String contactname=request.getParameter("econtactname");
            String contactno=request.getParameter("econtactno");
            String email=request.getParameter("eemail");
            String city=request.getParameter("ecity");
            String state=request.getParameter("estate");
            String category=request.getParameter("ecategory");
        	result = AdminDao.updateEmployer(cmpname,contactname,contactno,email,city,state,category,id);
        	if(result){		
    			out.println("<script type=\"text/javascript\">");
    	        out.println("alert('Updated Successfully!')"); 
    	        out.println("location='Admin/allemployers.jsp';");
    	        out.println("</script>");
    			RequestDispatcher rd=request.getRequestDispatcher("Admin/allemployers.jsp");  
    	        rd.include(request,response);
    	
    		}else{
    			out.println("<script type=\"text/javascript\">");
    	        out.println("alert('Error while updating!')"); 
    	        out.println("location='Admin/allemployers.jsp';");
    	        out.println("</script>");
    		RequestDispatcher rd=request.getRequestDispatcher("Admin/allemployers.jsp");  
            rd.include(request,response);
    		}
        } 
	}

}
