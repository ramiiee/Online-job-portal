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
import ModelPack.AuthDao;

/**
 * Servlet implementation class RequestServlet
 */
@WebServlet("/RequestServlet")
public class RequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RequestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        int id = Integer.parseInt((request.getParameter("userid")));
        String type = request.getParameter("type");
        String status = request.getParameter("status");
        
        boolean result = AdminDao.updateStatus(id,type,status); 
		if(result){
			out.println("<script type=\"text/javascript\">");
	        out.println("alert('Request Updated!')"); 
	        out.println("location='Admin/adminmain.jsp';");
	        out.println("</script>");
			RequestDispatcher rd=request.getRequestDispatcher("Admin/adminmain.jsp");  
	        rd.include(request,response);
		}else{
			out.println("<script type=\"text/javascript\">");
	        out.println("alert('Request Update Error!')"); 
	        out.println("location='Admin/adminmain.jsp';");
	        out.println("</script>");
		RequestDispatcher rd=request.getRequestDispatcher("Admin/adminmain.jsp");  
        rd.include(request,response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
