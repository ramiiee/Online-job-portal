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
@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLoginServlet() {
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
		
		String username = request.getParameter("adminuser");
		String password = request.getParameter("adminpass");
		 
		boolean result = AuthDao.checkAdmin(username, password); 
		if(result){
			request.getSession().setAttribute("username", username);
			
			out.println("<script type=\"text/javascript\">");
	        out.println("alert('Login Successfull!')"); 
	        out.println("location='Admin/adminmain.jsp';");
	        out.println("</script>");
			RequestDispatcher rd=request.getRequestDispatcher("Admin/adminmain.jsp");  
	        rd.include(request,response);
	
		}else{
			out.println("<script type=\"text/javascript\">");
	        out.println("alert('Invalid Username and Password!')"); 
	        out.println("location='Admin/adminlogin.jsp';");
	        out.println("</script>");
		RequestDispatcher rd=request.getRequestDispatcher("Admin/adminlogin.jsp");  
        rd.include(request,response);
		}
	}

}
