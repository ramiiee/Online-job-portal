<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Job Portal Features</title>
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
	   <div class="col-md-4">
	   	  <div class="col_3">
	   	  	<h3>Todays Jobs</h3>
	   	  	<ul class="list_1">
	   	  		<li><a href="#">Department of Health - Western Australia</a></li>
	   	  		<li><a href="#">Australian Nursing Agency currently require experiences</a></li>		
	   	  		<li><a href="#">Russia Nursing Agency currently require experiences</a></li>
	   	  		<li><a href="#">The Government of Western Saudi Arbia</a></li>		
	   	  		<li><a href="#">Department of Health - Western Australia</a></li>
	   	  		<li><a href="#">Australian Nursing Agency currently require experiences</a></li>		
	   	  		<li><a href="#">Russia Nursing Agency currently require experiences</a></li>
	   	  		<li><a href="#">The Scientific Publishing Services in Saudi Arbia</a></li>	
	   	  		<li><a href="#">BPO Private Limited in Canada</a></li>		
	   	  		<li><a href="#">Executive Tracks Associates in Pakistan</a></li>
	   	  		<li><a href="#">Pyramid IT Consulting Pvt. Ltd. in Pakistan</a></li>						
	   	  	</ul>
	   	  </div>
	   	  <div class="col_3">
	   	  	<h3>Jobs by Category</h3>
	   	  	<ul class="list_2">
	   	  		<li><a href="#">Railway Recruitment</a></li>
	   	  		<li><a href="#">Air Force Jobs</a></li>		
	   	  		<li><a href="#">Police Jobs</a></li>
	   	  		<li><a href="#">Intelligence Bureau Jobs</a></li>		
	   	  		<li><a href="#">Army Jobs</a></li>
	   	  		<li><a href="#">Navy Jobs</a></li>		
	   	  		<li><a href="#">BSNL Jobs</a></li>
	   	  		<li><a href="#">Software Jobs</a></li>	
	   	  		<li><a href="#">Research Jobs</a></li>								
	   	  	</ul>
	   	  </div>
	   	  <div class="widget">
	        <h3>Take The Seeking Poll!</h3>
    	        <div class="widget-content"> 
                 <div class="seeking-answer">
			    	<span class="seeking-answer-group">
		    			<span class="seeking-answer-input">
		    			   <input class="seeking-radiobutton" type="radio">
		    			</span>
		    			<label for="" class="seeking-input-label">
		    				<span class="seeking-answer-span">Frequently</span>
		    			</label>
		    		</span>
			    	<span class="seeking-answer-group">
		    			<span class="seeking-answer-input">
		    			   <input class="seeking-radiobutton" type="radio">
		    			</span>
		    			<label for="" class="seeking-input-label">
		    				<span class="seeking-answer-span">Interviewing</span>
		    			</label>
		    		</span>
			        <span class="seeking-answer-group">
		    			<span class="seeking-answer-input">
		    			   <input class="seeking-radiobutton" type="radio">
		    			</span>
		    			<label for="" class="seeking-input-label">
		    				<span class="seeking-answer-span">Leaving a familiar workplace</span>
		    			</label>
		    		</span>
		    		<div class="seeking_vote">
		    		  <a class="seeking-vote-button">Vote</a>
		    		</div>
			     </div>
    	       </div>
    	</div>
	 </div>
	 <div class="col-md-8 single_right">
	    <h3>Features</h3>	
	    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
	    <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>
	    <h5>Requirements</h5>   
	    <ul class="feature_list">
			<li>There are many variations of passages of Lorem Ipsum available.</li>
			<li>It is a long established fact that a reader.</li>
			<li>Nulla rutrum nisi mi, iaculis commodo nibh lobortis sed.</li>
			<li>Sed pulvinar, nunc vitae molestie dapibus, lacus dolor dignissim sapien.</li>
			<li>Pellentesque ipsum ex, imperdiet quis consequat sed, consectetur ut ante.</li>
			<li>Aliquam libero felis, mollis vitae elementum vel, bibendum eu tortor.</li>
			<li>Lorem ipsum dolor sit amet.</li>
		</ul>
		<h5>Benefits</h5>   
		<ul class="feature_list">
			<li>Aliquam rhoncus justo eget tellus scelerisque, at mollis mi aliquam.</li>
			<li>Quisque pretium convallis pulvinar.</li>
			<li>Nulla rutrum nisi mi, iaculis commodo nibh lobortis sed.</li>
			<li>Sed pulvinar, nunc vitae molestie dapibus, lacus dolor dignissim sapien.</li>
			<li>Pellentesque ipsum ex, imperdiet quis consequat sed, consectetur ut ante.</li>
			<li>Aliquam libero felis, mollis vitae elementum vel, bibendum eu tortor.</li>
			<li>Morbi rhoncus luctus interdum.</li>
		</ul>
     </div>
     <div class="clearfix"> </div>
 </div>
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