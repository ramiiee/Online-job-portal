<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Job Portal Employer Register</title>
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
	   <div class="form-container">
        <h2>Employer Registration</h2>
        <form name="form" action="EmpRegisterServlet" method="post">
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="usernameEmp">Username</label>
                <div class="col-md-9">
                    <input type="text" name="usernameEmp" id="usernameEmp" class="form-control input-sm" required/>
                </div>
            </div>
         </div>
         <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="passwordEmp">Password</label>
                <div class="col-md-9">
                    <input type="password" name="passwordEmp" id="passwordEmp" class="form-control input-sm" required/>
                </div>
            </div>
         </div>
          <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="cmpName">Company Name</label>
                <div class="col-md-9">
                    <input type="text" name="cmpName" id="cmpName" class="form-control input-sm" required/>
                </div>
            </div>
         </div>
         <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="contactName">Contact Person</label>
                <div class="col-md-9">
                    <input type="text" name="contactName" id="contactName" class="form-control input-sm" required/>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="contactEmp">Contact Number</label>
                <div class="col-md-9">
                    <input type="text" name="contactEmp" id="contactEmp" class="form-control input-sm" required/>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="emailEmp">Company Email</label>
                <div class="col-md-9">
                    <input type="text" name="emailEmp" id="emailEmp" class="form-control input-sm" required/>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="cityEmp">City</label>
                <div class="col-md-9">
                    <input type="text" name="cityEmp" id="cityEmp" class="form-control input-sm" required/>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="stateEmp">State</label>
                <div class="col-md-9">
                    <select name="stateEmp" id="stateEmp" class="form-control input-sm" required>
                        <option value="">-- Select State --</option>
                        <option value="AL">Alabama</option>
	<option value="AK">Alaska</option>
	<option value="AZ">Arizona</option>
	<option value="AR">Arkansas</option>
	<option value="CA">California</option>
	<option value="CO">Colorado</option>
	<option value="CT">Connecticut</option>
	<option value="DE">Delaware</option>
	<option value="DC">District Of Columbia</option>
	<option value="FL">Florida</option>
	<option value="GA">Georgia</option>
	<option value="HI">Hawaii</option>
	<option value="ID">Idaho</option>
	<option value="IL">Illinois</option>
	<option value="IN">Indiana</option>
	<option value="IA">Iowa</option>
	<option value="KS">Kansas</option>
	<option value="KY">Kentucky</option>
	<option value="LA">Louisiana</option>
	<option value="ME">Maine</option>
	<option value="MD">Maryland</option>
	<option value="MA">Massachusetts</option>
	<option value="MI">Michigan</option>
	<option value="MN">Minnesota</option>
	<option value="MS">Mississippi</option>
	<option value="MO">Missouri</option>
	<option value="MT">Montana</option>
	<option value="NE">Nebraska</option>
	<option value="NV">Nevada</option>
	<option value="NH">New Hampshire</option>
	<option value="NJ">New Jersey</option>
	<option value="NM">New Mexico</option>
	<option value="NY">New York</option>
	<option value="NC">North Carolina</option>
	<option value="ND">North Dakota</option>
	<option value="OH">Ohio</option>
	<option value="OK">Oklahoma</option>
	<option value="OR">Oregon</option>
	<option value="PA">Pennsylvania</option>
	<option value="RI">Rhode Island</option>
	<option value="SC">South Carolina</option>
	<option value="SD">South Dakota</option>
	<option value="TN">Tennessee</option>
	<option value="TX">Texas</option>
	<option value="UT">Utah</option>
	<option value="VT">Vermont</option>
	<option value="VA">Virginia</option>
	<option value="WA">Washington</option>
	<option value="WV">West Virginia</option>
	<option value="WI">Wisconsin</option>
	<option value="WY">Wyoming</option>
                    </select>
                    
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="categoryEmp">Category</label>
                <div class="col-md-9">
                    <select name="categoryEmp" id="categoryEmp" class="form-control input-sm" required>
                        <option value="">-- Select Category --</option>
                        <option value="Accounting / Auditing / Tax">Accounting / Auditing / Tax</option>
<option value="Administration / Secretary / Front Office">Administration / Secretary / Front Office</option>
<option value="Architecture / Civil Engineering">Architecture / Civil Engineering</option>
<option value="Art / Design / Creative / Fashion">Art / Design / Creative / Fashion</option>
<option value="Banking / Financial Services">Banking / Financial Services</option>
<option value="Construction">Construction</option>
<option value="Consulting / Strategy / Corporate Planning">Consulting / Strategy / Corporate Planning</option>
<option value="Content / Edition / Journalism">Content / Edition / Journalism</option>
<option value="Customer Service / Call Centre / Operations / Data Entry">Customer Service / Call Centre / Operations / Data Entry</option>
<option value="Education / Teaching / Language">Education / Teaching / Language</option>
<option value="Engineering / R&D">Engineering / R&D</option>
<option value="Executive Management">Executive Management</option>
<option value="Freshers Jobs">Freshers Jobs</option>
<option value="Healthcare / Medical / Pharmacy">Healthcare / Medical / Pharmacy</option>
<option value="Hotel / Restaurant / Catering">Hotel / Restaurant / Catering</option>
<option value="HR / Recruitment">HR / Recruitment</option>
<option value="Import-Export / Merchandising / Trading">Import-Export / Merchandising / Trading</option>
<option value="Insurance">Insurance</option>
<option value="Internet Technologies / Web / E-Commerce">Internet Technologies / Web / E-Commerce</option>
<option value="IT - Databases / Datawarehousing">IT - Databases / Datawarehousing</option>
<option value="IT - ERP / CRM">IT - ERP / CRM</option>
<option value="IT - Hardware / Telecom / Support">IT - Hardware / Telecom / Support</option>
<option value="IT - Project Management">IT - Project Management</option>
<option value="IT - Software Programming / Analysis">IT - Software Programming / Analysis</option>
<option value="IT - Systems / Networking / Security">IT - Systems / Networking / Security</option>
<option value="Legal / Law">Legal / Law</option>
<option value="Logistics / Purchase / Supply Chain / Procurement">Logistics / Purchase / Supply Chain / Procurement</option>
<option value="Manufacturing / Packaging / Printing / Industrial Jobs">Manufacturing / Packaging / Printing / Industrial Jobs</option>
<option value="Marketing / Communication / Advertising / PR">Marketing / Communication / Advertising / PR</option>
<option value="Mechanical Engineering / Mechatronics">Mechanical Engineering / Mechatronics</option>
<option value="Media / TV / Films / Production">Media / TV / Films / Production</option>
<option value="Pharma, Biotech and Chemical Industry">Pharma, Biotech and Chemical Industry</option>
<option value="Project Management">Project Management</option>
<option value="Quality / Testing / Process Control">Quality / Testing / Process Control</option>
<option value="Real Estate / Property">Real Estate / Property</option>
<option value="Sales / Business Development">Sales / Business Development</option>
<option value="Security Services / Guards">Security Services / Guards</option>
<option value="Skilled Trade / Service / Installation / Repair">Skilled Trade / Service / Installation / Repair</option>
<option value="Social Services / NGOs / Nonprofit">Social Services / NGOs / Nonprofit</option>
<option value="Travel / Reservation / Airlines">Travel / Reservation / Airlines</option>
<option value="Others">Others</option>
                    </select>
               </div>
            </div>
        </div>
        <div class="row">
            <div class="form-actions floatRight">
                <input type="submit" value="Register" class="btn btn-primary btn-sm">
            </div>
        </div>
    </form>
    </div>
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