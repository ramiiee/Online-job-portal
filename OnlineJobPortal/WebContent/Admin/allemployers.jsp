<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate, max-age=0, post-check=0, pre-check=0");
    response.setHeader("Pragma", "no-cache");
%>
<%
    try {
        if ((session.getAttribute("username")).toString() == null) {
            response.sendRedirect("adminlogin.jsp");
        }
    } catch (Exception e) {
        response.sendRedirect("adminlogin.jsp");
    }
%>
<html>
<head>
<title>List Employers</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="../css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<link href="../css/style.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Roboto:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<link href="../css/font-awesome.css" rel="stylesheet"> 
</head>
<body>
<nav class="navbar navbar-default" role="navigation">
	<div class="container">
	    <div class="navbar-header">
	        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
	        </button>
	        <a class="navbar-brand" href="../index.jsp"><img src="../images/logo.png" width="160" height="70" alt=""/></a>
	    </div>
	    <!--/.navbar-header-->
	    <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1" style="height: 1px;">
	        <ul class="nav navbar-nav">
	        	<li><a href="adminmain.jsp">View Requests</a></li>
		        <li><a href="alljobseekers.jsp">List Jobseekers</a></li>
		        <li><a href="allemployers.jsp">List Employers</a></li>
		        <li><a href="../LogoutServlet">Logout</a></li>
			</ul>
	    </div>
	    <div class="clearfix"> </div>
	  </div>
	    <!--/.navbar-collapse-->
	</nav>
<div class="banner_1">
	<div class="container">
		<div id="search_wrapper1">
		   <div id="search_form" class="clearfix">
		   <h4>Administrator - Welcome <%=request.getSession().getAttribute("username") %></h4>
		    <h1>List Employers</h1>
			</div>
		</div>
   </div> 
</div>	
<div class="container">
    <div class="single">  
	   <table width="25%" border="1">
                <center><h1>Employers:</h1></center>
                <% Class.forName("com.mysql.jdbc.Driver");  
                
                Connection con=DriverManager.getConnection(  
                "jdbc:mysql://localhost:3306/jobportal?zeroDateTimeBehavior=convertToNull","root","root");  
  
                PreparedStatement ps=con.prepareStatement(
                "select * from employer");        
                    
                ResultSet rs=ps.executeQuery();
                ResultSetMetaData rsmd=rs.getMetaData();
                %>
                <tr>
                    <td><b><%= rsmd.getColumnName(1) %></b></td>
                    <td><b><%= rsmd.getColumnName(2) %></b></td> 
                    <td><b><%= rsmd.getColumnName(3) %></b></td>
                    <td><b><%= rsmd.getColumnName(4) %></b></td>
                    <td><b><%= rsmd.getColumnName(5) %></b></td> 
                    <td><b><%= rsmd.getColumnName(6) %></b></td>
                    <td><b><%= rsmd.getColumnName(7) %></b></td>
                    <td><b><%= rsmd.getColumnName(8) %></b></td> 
                    <td><b><%= rsmd.getColumnName(9) %></b></td>
                </tr>
                <% while (rs.next())
                {
                %>
                <tr>
                	<td><%= rs.getInt(1) %></td>
                    <td><%= rs.getString(2) %></td>
                    <td><%= rs.getString(3) %></td>
                    <td><%= rs.getString(4) %></td>
                    <td><%= rs.getString(5) %></td>
                    <td><%= rs.getString(6) %></td>
                    <td><%= rs.getString(7) %></td>
                    <td><%= rs.getString(8) %></td>
                    <td><%= rs.getString(9) %></td>
                    <td><a href="updateemployer.jsp?userid=<%= rs.getInt(1) %>&type=Employer" >Edit</a></td>
                    <td><a href="../DeleteUserServlet?userid=<%= rs.getInt(1) %>&type=Employer" >Delete</a></td>
                </tr>
                <%
                }
                %>
            </table>
	</div>
</div>
<div class="footer">
	<div class="container">
		<div class="copy">
		<p>Copyright © 2017 Job Portal. All Rights Reserved.</p>
	</div>
	</div>
</div>
</body>
</html>	