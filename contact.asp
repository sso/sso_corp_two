<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Sport Systems Online - Contact</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script src="javascript/jquery.js" type="text/javascript"></script>
<script src="javascript/jqueryslidemenu.js" type="text/javascript"></script>

<!-- Cufon JavaScript Files -->
<script src="javascript/cufon-yui.js" type="text/javascript"></script>
<script src="javascript/kabel-font.js" type="text/javascript"></script>
<script type="text/javascript">
Cufon.replace('h1, strong')
</script>

<!--[if IE 6]>
<script type="text/javascript" src="javascript/DD_belatedPNG.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#wrapper, #logo, .jqueryslidemenu ul li ul, .jqueryslidemenu ul li ul li a, #bottom img,  #footer .boxes_holder .follow_twitter');
</script>
<![endif]--> 
 
<!-- Form validation JavaScript Files -->
<script src="javascript/jquery.formvalidation.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#form").validate();
});
</script>

</head>

<%

posted = request.form ("submit")

if posted = "Submit" then

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

'' Customize the following 5 lines with your own information. ''

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

vtoaddress = "info@sportsystemsonline.com" ' Change this to the email address you will be receiving your notices.
vmailhost = "mymail.brinkster.com"  ' Change this to mail.yourDomain or leave as is.
vfromaddress = "info@sportsystemsonline.com" ' Change this to the email address you will use to send and authenticate with.
vfrompwd = "infosso" ' Change this to the above email addresses password.
vsubject = "SSO Contact Form" 'Change this to your own email message subject.

'''''''''''''''''''''''''''''''''''''''''''

'' DO NOT CHANGE ANYTHING PAST THIS LINE ''

'''''''''''''''''''''''''''''''''''''''''''

vfromname = request.form ("name")

vbody = "phone number:"+ request.form ("phone")+ "\n message:"+ request.form ("message")

vrplyto = request.form ("email")

vmsgbody = vfromname &"<br>"& vrplyto &"<br>"& vbody

vthanks = request.form ("thanks")

Set objEmail = Server.CreateObject("Persist.MailSender")

objEmail.Username = vfromaddress

objEmail.Password = vfrompwd

objEmail.Host = vmailhost

objEmail.From = vfromaddress

objEmail.AddAddress vtoaddress

objEmail.Subject = vsubject

objEmail.Body = vmsgbody

objEmail.IsHTML = True

objEmail.Send


vErr = Err.Description
if vErr <> "" then
    response.write vErr & "<br><br>There was an error on this page."
else
	response.write vthanks
End If
 
Set objEmail = Nothing

end if

%>

<body>

<div id="wrapper">

<div id="logo"></div><!--END logo-->

<div id="myslidemenu" class="jqueryslidemenu">
        <ul>
          <li><a href="index.html">Home</a>
					  
		  </li>
          <li><a href="about.html">About Us</a></li>
		
          <li><a href="services.html">Services</a>
				<ul style="display: none; visibility: visible;">
				  <li><a href="league_manager.html">League Manager</a></li>
				  <li><a href="scheduler.html">Scheduler</a></li>
				  <li><a href="team_manager.html">Team Manager</a></li>
				  <li><a href="profile_manager.html">Profile Manager</a></li>
				  <li><a href="online_registration.html">Online Registration</a></li>
				</ul><!--END submenu services-->
          </li>
        
          <li><a href="leagues.html">Leagues</a></li>
          <li><a href="demo.html">Demo</a></li>
          <li><a href="register.html">Register</a></li>
          <li><a href="support.html">Support</a></li>
          
		  <li><a href="Archive/contact.html" class="current">Contact</a></li>
        </ul>
</div><!--END jqueryslidemenu-->

	<form id="search" name="search" method="post" action="#">
		<input name="s" type="text" id="s" value="Search the site" onblur="if (this.value == ''){this.value = 'Search the site'; }" onfocus="if (this.value == 'Search the site') {this.value = ''; }" />
		<input name="Submit" type="submit" class="search_button" value="Search" />
	</form><!--END search-->

<div id="container">

<div id="contactinfo"><img src="images/map.jpg" alt="map" /></div>
	
	  <div class="intro contact_info">
		<strong>Visit us </strong>
		<p>Davie, FL 33325</p>
	  </div>

	  <div class="intro contact_info">
		<strong>Call us </strong>
		<p>Tel: 954-543-8991<br />
          Fax: 954-543-8991</p>
	  </div>
	
		<div class="intro contact_info">
		<strong>Email us</strong>
		<p>General: 
		<a href="mailto:info@sportsystemsonline.com?subject=SSO Info">info@sportsystemsonline.com</p>
		</a>
		<p><br />Support: 
		<a href="mailto:support@sportsystemsonline.com?subject=SSO Support">support@sportsystemsonline.com</p>
		</a>
		<p><br />Join our team: 
		<a href="mailto:careers@sportsystemsonline.com?subject=SSO Careers">careers@sportsystemsonline.com</a></p>
		</div>	

<form id="form" class="contactForm" method="post">
<!--place send.php in action instead of #-->
	<strong>Contact</strong>      <input id="thanks" type="hidden" value="Thank you, your message has been sent." />

	<p>To provide an online user friendly solution that will assist sports organizations to better manage and organize sporting events. “Sport Systems Online is a company that will revolutionize league management, by providing the best in class online solution.” <br /><br />
	</p> 
	
	<div>
		<label>Name <span class="font-11">(required)</span></label>
		<input name="name" type="text" class="required" />
	</div>

	<div>
		<label>Phone</label>
		<input name="phone" type="text" class="required number" />		
	</div>

	<div>
		<label>E-mail <span class="font-11">(required)</span></label>
		<input name="email" type="text" class="required email" />		
	</div>

	<div>
		<label>Subject</label>
		<input name="subject" type="text" />		
	</div>
	
	<div class="textarea">
		<label>Message <span class="font-11">(required)</span></label>
		<textarea name="message" rows="6" cols="60" class="required"></textarea>		
	</div>

	<div>
		<input name="Submit" id="submit" value="Submit" type="submit" class="submitBtn" />
	</div>

</form>

</div><!--END container-->

<div id="bottom_holder">
<div id="bottom">

<div>
	<span class="strong">About</span>
	<p>“Sport Systems Online (SSO) is a company that will revolutionize league management, by providing the best in class online solution.” <br /><br />
	</p>
</div><!--END div-->

<div class="second">
	<span class="strong">Contact</span>
		<p>General inquiries: 
		<a href="mailto:info@sportsystemsonline.com?subject=SSO Info">info@sportsystemsonline.com</a></p>
		<p>Support:visit the <a href="faq.html">FAQs</a></p>
		<ul> 
			<li><a href="#" onmouseover="Tip('Technorati')" onmouseout="UnTip()"><img src="images/socialize1.png" alt="1" /></a></li>
			<li><a href="#" onmouseover="Tip('Stumbleupon')" onmouseout="UnTip()"><img src="images/socialize2.png" alt="2" /></a></li>
			<li><a href="#" onmouseover="Tip('Flickr')" onmouseout="UnTip()"><img src="images/socialize3.png" alt="3" /></a></li>
			<li><a href="#" onmouseover="Tip('Facebook')" onmouseout="UnTip()"><img src="images/socialize4.png" alt="4" /></a></li>
			<li><a href="#" onmouseover="Tip('Reddit')" onmouseout="UnTip()"><img src="images/socialize5.png" alt="5" /></a></li>
			<li><a href="#" onmouseover="Tip('Digg')" onmouseout="UnTip()"><img src="images/socialize6.png" alt="6" /></a></li>
			<li><a href="#" onmouseover="Tip('Blogger')" onmouseout="UnTip()"><img src="images/socialize7.png" alt="7" /></a></li>
    		<li><a href="#" onmouseover="Tip('Delicious')" onmouseout="UnTip()"><img src="images/socialize8.png" alt="8" /></a></li>
		</ul>	     
</div><!--END div second-->

<div class="last">
	<span class="strong">Updates</span>
	<p>Our newsletter is awesome. Subscribe and get the latest updates.</p>
        <form id="newsletter" name="newsletter" method="post" action="#">
			<input type="text" id="n" value="Enter your email" onblur="if (this.value == ''){this.value = 'Enter your email'; }" onfocus="if (this.value == 'Enter your email') {this.value = ''; }" />
			<input name="Submit" type="submit" class="newsletter_button" value="Subscribe" />
		</form><!--END form-->
</div><!--END last-->
	
</div><!--END bottom-->
</div><!--END bottom holder-->

</div><!--END wrapper-->

<div id="footer">

	<div class="boxes_holder">
	  <a href="#" class="follow_twitter"></a>
		<div class="box">
			<h1>Location</h1>
			<ul>
				<li>12010 SW 26 Street</li>
<li>Davie, FL 33325</li>
				<li>P - 954-543-8991</li>
				<li>F - 954-543-8991<br /><br /></li>
				<li>E - 
				<a href="mailto:info@sportsystemsonline.com?subject=SSO Info">info@sportsystemsonline.com</a></li>
				<li>Skype - 
				<a href="http://www.skype.com/download/skype/windows/?c=101">Sport Systems Online</a></li>
			</ul><!--ENDS ul-->				
		</div><!--END box-->
		
		<div class="box">
			<h1>Other Benefits </h1>
			<ul>
				<li><a href="#">Sport management application</a></li>
				<li><a href="#">League & tournament scheduling</a></li>
				<li><a href="#">Back office data entry</a></li>
				<li><a href="#">Program & league setup</a></li>
				<li><a href="#">Mass email & address labels</a></li>
				<li><a href="#">Financial reporting</a></li>
				<li><a href="#">Volunteer background checks</a></li>
				<li><a href="#">Website management</a></li>																			
			</ul><!--ENDS ul-->
		</div><!--END box-->
		
		<div class="box">
			<h1>What`s New @ SSO </h1>
			<ul>
				<li><a href="#">Miramar Soccer Management</a></li>
				<li><a href="#">Miami Dade Scheduling System</a></li>																				
			</ul><!--END ul-->
		</div><!--END box-->
				
		<div class="box">
			<h1>Key Features</h1>
			<ul>
				<li><a href="#">Online Registration & Payment</a></li>
				<li><a href="#">Fully Customizable Online Forms</a></li>
				<li><a href="#">Certified Real Time Credit Card Processing</a></li>
				<li><a href="#">Automated Confirmations & Receipts</a></li>
				<li><a href="#">Fully Integrated Shopping Cart</a></li>
				<li><a href="#">Team Building & Game Scheduling</a></li>
                <li><a href="#">Player & Volunteer Management Tools</a></li>
                <li><a href="#">Membership Management</a></li>
                <li><a href="#">Broadcast & Target Email</a></li>
                <li><a href="#">Free Hosting, Support & Training</a></li>																										
			</ul><!--END ul-->
		</div><!--END box-->
		
		<div class="boxes_holder_twitter">
	  		<div class="box_twitter">
				<p>Sport Systems Online - Revolutionizing the Sport with Online League Management<a href="#"></a></p>
	      </div><!--END box_twitter-->
		</div><!--END boxes_holder_twitter-->
		
		<div class="subfooter">
			<ul>
				<li></li>
				<li><a href="index.html">Home</a></li>
				<li></li>
				<li><a href="http://www.sportsystemsonline.com/about.html">About Us</a></li>
				<li>
				<a href="http://www.sportsystemsonline.com/services.html">Services</a></li>
				<li><a href="leagues.html">Leagues</a></li>
				<li><a href="demo.html">Demo</a></li>
				<li><a href="register.html">Register</a></li>
                <li>
				<a href="http://www.sportsystemsonline.com/support.html">Support</a></li>
                <li>
				<a href="http://www.sportsystemsonline.com/contact.html">Contact</a></li>
				
			</ul><!--?ND subfooter ul-->			<h3>Copyright © Sport Systems Online, All rights reserved.</h3>		
		</div><!--END subfooter-->					
	</div><!--END boxes holder-->
</div><!--END footer-->

<script language="javascript" type="text/javascript" src="javascript/wz_tooltip.js"></script>
</body>
</html>
