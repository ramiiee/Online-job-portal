<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Job Portal Contact</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Roboto:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<link href="css/font-awesome.css" rel="stylesheet"> 
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
	        <a class="navbar-brand" href="index.jsp"><img src="images/logo.png" width="160" height="70" alt=""/></a>
	    </div>
	    <!--/.navbar-header-->
	    <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1" style="height: 1px;">
	        <ul class="nav navbar-nav">
	        	<li><a href="login.jsp">Jobseeker</a></li>
		        <li><a href="login.jsp">Employer</a></li>
		        <li><a href="login.jsp">Login</a></li>
		        <li><a href="register.jsp">Register</a></li>
		        <li><a href="about.jsp">About Us</a></li>
		        <li><a href="contact.jsp">Contact Us</a></li>
		        <!-- <li class="dropdown">
		            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Recruiters<b class="caret"></b></a>
		             <ul class="dropdown-menu">
			            <li><a href="login.jsp">Recruiter Updates</a></li>
			            <li><a href="recruiters.jsp">Recruiters you are following</a></li>
			            <li><a href="codes.jsp">Shortcodes</a></li>
		             </ul>
		        </li> -->
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
		    <!-- <h1>Start your job search</h1>
		    <p>
			 <input type="text" class="text" placeholder=" " value="Enter Keyword(s)" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Keyword(s)';}">
			 <input type="text" class="text" placeholder=" " value="Location" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Location';}">
			 <label class="btn2 btn-2 btn2-1b"><input type="submit" value="Find Jobs"></label>
			</p> -->
           </div>
		</div>
   </div> 
</div>	
<div class="container">
    <div class="single">  
	   <div class="content_bottom">
	   	 <h3>Contact Us</h3>
	   	   <form>
			<div class="contact_box1">
             	<input type="text" class="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}">
			 	<input type="text" class="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" style="margin-left:3%">
			 	<input type="text" class="text" value="Phone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Phone';}" style="margin-left:3%">
			</div>
			<div class="text_1">
               <textarea value="Message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Message</textarea>
            </div>
            <div class="form-submit1 form_but1">
	           <input name="submit" type="submit" id="submit" value="Submit"><br>
	        </div>
			<div class="clearfix"></div>
           </form>
	   </div>
    </div>
</div>
<div class="map">
	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d46946.06092209114!2d-73.82120414908199!3d42.65862573826895!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc7c3edbfb0809e9e!2sUniversity+at+Albany!5e0!3m2!1sen!2sus!4v1507613261683"></iframe>
</div>
<div class="footer">
	<div class="container">
		<div class="col-md-3 grid_3">
			<h4>Navigation</h4>
			<ul class="f_list f_list1">
				<li><a href="index.jsp">Home</a></li>
				<li><a href="login.jsp">Login</a></li>
				<li><a href="register.jsp">Register</a></li>
				<li><a href="login.jsp">Jobseeker</a></li>
				<li><a href="login.jsp">Employer</a></li>
			</ul>
			<ul class="f_list">
				<li><a href="about.jsp">About Us</a></li>
				<li><a href="contact.jsp">Contact Us</a></li>
				<li><a href="features.jsp">Features</a></li>
				<li><a href="services.jsp">Services</a></li>
				<li><a href="terms.jsp">Terms of use</a></li>
			</ul>
			<div class="clearfix"> </div>
		</div>
		<div class="col-md-3 grid_3">
			<h4>Benefits</h4>
			<div class="footer-list">
			  <ul>
				<li><p> Wider Search Reach</p></li>
				<li><p> Fully Secured</p></li>
				<li><p> Easy to Apply</p></li>
				<li><p> Find the Right Job</p></li>
			  </ul>
			</div>
		</div>
		<div class="col-md-3 grid_3">
			<h4>Who We Are!</h4>
			<p style="text-align:justify">We have a trusted relation with the employer and the jobseekers and we believe in maintaining that trust and relationship throughout. Our main aim is satisfied customers, be it employers or jobseekers.</p>
		</div>
		<div class="col-md-3 grid_3">
			<p style="margin-bottom:2em"><img src="images/logo.png" width="160" height="70" alt=""/></p>
			<h5>Not Registered? Register Now</h5>
			<p><button type="button" class="btn red" onclick="location.href='register.jsp'">Register Now!</button></p>
		</div>
		<div class="clearfix"> </div>
		<div class="copy">
		<p>Copyright © 2017 Job Portal. All Rights Reserved.</p>
	</div>
	</div>
</div>
</body>
</html>			