package ControllerPack;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import ModelPack.AuthDao;

/**
 * Servlet implementation class JskRegisterServlet
 */
@WebServlet("/JskRegisterServlet")
@MultipartConfig 
public class JskRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JskRegisterServlet() {
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
          
        String uname=request.getParameter("username");
        String pass=request.getParameter("password");
        String fname=request.getParameter("firstName");
        String lname=request.getParameter("lastName");
        String contactno=request.getParameter("contact");
        String gender=request.getParameter("gender");
        String dob=request.getParameter("dob");
        String email=request.getParameter("email");
        String education=request.getParameter("education");
        String city=request.getParameter("city");
        String state=request.getParameter("state");
        String workexp=request.getParameter("workexp");
        String category=request.getParameter("category");
        Part filePart = request.getPart("resume");
        String resumefile = filePart.getSubmittedFileName();
        
        boolean checkusername = AuthDao.checkJskUserName(uname);
        
        if(checkusername){ 
        	boolean status = AuthDao.addNewJobseeker(uname,pass,fname,lname,contactno,gender,dob,email,education,city,state,workexp,category,resumefile);
            
            if(status){
            	OutputStream output = null;
                InputStream filecontent = null;
                String filePath = getServletContext().getRealPath("/Resume");
                filePath = filePath.substring(0,filePath.indexOf("\\.metadata"));
                
                try{
                    File dir = new File(filePath + "\\OnlineJobPortal\\WebContent\\Resume");
                               if (!dir.exists()) {
                                dir.mkdirs();
                                }
                   output = new FileOutputStream(new File(dir + File.separator + resumefile));
                   filecontent = filePart.getInputStream();
                   int read;
                   final byte[] bytes = new byte[1024];
                   while ((read = filecontent.read(bytes))!=-1){
                       output.write(bytes, 0, read);
                   }
                   out.println("<script type=\"text/javascript\">");
                   out.println("alert('Registered Successfully!')"); 
                   out.println("location='login.jsp';");
                   out.println("</script>");
                   RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
                   rd.include(request,response);
                   } catch (Exception e) {
                    out.println("Error in file upload <br/> ERROR:" + e.getMessage());
                } finally {
                    if (output != null){
                        output.close();
                    }
                    if (filecontent != null){
                        filecontent.close();
                    }
                    if (out != null){
                        out.close();
                    }
                }
            }else{ 
            	out.println("<script type=\"text/javascript\">");
                out.println("alert('Register Error!')"); 
                out.println("location='register.jsp';");
                out.println("</script>");
                RequestDispatcher rd=request.getRequestDispatcher("jskregister.jsp");  
                rd.include(request,response); 
            }
        }else{
        	out.println("<script type=\"text/javascript\">");
            out.println("alert('Username already exists!')"); 
            out.println("location='register.jsp';");
            out.println("</script>");
        	RequestDispatcher rd=request.getRequestDispatcher("jskregister.jsp");  
            rd.include(request,response); 
        }
	}

}
