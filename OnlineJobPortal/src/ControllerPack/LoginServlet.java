package ControllerPack;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ModelPack.AuthDao;
import ModelPack.UserBean;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
        PrintWriter out=response.getWriter();  
		
		String username = request.getParameter("userlogin");
		String password = request.getParameter("passlogin");
		String type = request.getParameter("typelogin");
		 
		boolean result = AuthDao.checkUserPass(username,password,type); 
		if(result){
		int userid = AuthDao.getUserId(username,type);
		UserBean userBean = new UserBean();
		userBean = AuthDao.getUserById(userid,type);
		String auth = userBean.getAuthorization();
		if(type.equalsIgnoreCase("jobseeker")){
			if(auth.equalsIgnoreCase("Pending")){
				out.println("<script type=\"text/javascript\">");
		        out.println("alert('Authorization Pending. Please Contact Administrator!')"); 
		        out.println("location='login.jsp';");
		        out.println("</script>");
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
	        rd.include(request,response);
			}else if(auth.equalsIgnoreCase("Denied")){
				out.println("<script type=\"text/javascript\">");
		        out.println("alert('Authorization Denied. Please Contact Administrator!')"); 
		        out.println("location='login.jsp';");
		        out.println("</script>");
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
	        rd.include(request,response);
			}else{
				request.getSession().setAttribute("username", username);
				request.getSession().setAttribute("type", type);
				request.getSession().setAttribute("firstname", userBean.getFirstname());
				request.getSession().setAttribute("lastname", userBean.getLastname());
				
				out.println("<script type=\"text/javascript\">");
		        out.println("alert('Login Successfull!')"); 
		        out.println("location='Jobseeker/jobseekermain.jsp';");
		        out.println("</script>");
				RequestDispatcher rd=request.getRequestDispatcher("Jobseeker/jobseekermain.jsp");  
		        rd.include(request,response);
			}
		}else if(type.equalsIgnoreCase("employer")){
			if(auth.equalsIgnoreCase("Pending")){
				out.println("<script type=\"text/javascript\">");
		        out.println("alert('Authorization Pending. Please Contact Administrator!')"); 
		        out.println("location='login.jsp';");
		        out.println("</script>");
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
	        rd.include(request,response);
			}else if(auth.equalsIgnoreCase("Denied")){
				out.println("<script type=\"text/javascript\">");
		        out.println("alert('Authorization Denied. Please Contact Administrator!')"); 
		        out.println("location='login.jsp';");
		        out.println("</script>");
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
	        rd.include(request,response);
			}else{
			request.getSession().setAttribute("username", username);
			request.getSession().setAttribute("type", type);
			request.getSession().setAttribute("cmpname", userBean.getCompanyname());
			request.getSession().setAttribute("contactname", userBean.getContactname());
			
			out.println("<script type=\"text/javascript\">");
	        out.println("alert('Login Successfull!')"); 
	        out.println("location='Employer/employermain.jsp';");
	        out.println("</script>");
			RequestDispatcher rd=request.getRequestDispatcher("Employer/employermain.jsp");  
	        rd.include(request,response);
			}
		}
		}else{
			out.println("<script type=\"text/javascript\">");
	        out.println("alert('Invalid Username and Password!')"); 
	        out.println("location='login.jsp';");
	        out.println("</script>");
		RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
        rd.include(request,response);
		}
	}

}
