<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Creative</title>
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

</head>

<body>

<?php
$email = "emailaddress@email.com";
$name = $_POST["name"];
$phone = $_POST["phone"];
$email = $_POST["email"];
$subject = $_POST["subject"];
$message = $_POST["message"];
$text = "NAME: $name<br>
		 PHONE: $phone<br>
         EMAIL: $email<br>
		 SUBJECT: $subject<br>
         MESSAGE: $message";
$headers = "MIME-Version: 1.0" . "\r\n"; 
$headers .= "Content-type:text/html; charset=utf-8" . "\r\n"; 
$headers .= "From: $name" . "\r\n"; 
mail($email, "Message", $text, $headers);

?>

<div id="wrapper">

<div id="logo"></div><!--END logo-->

<div id="myslidemenu" class="jqueryslidemenu">
        <ul>
          <li><a href="index.html">Home</a>
				<ul style="display: none; visibility: visible;">
				  <li><a href="index.html">Horizontal slide</a></li>
				  <li><a href="index2.html">Cu3er</a></li>
				</ul><!--END submenu home-->		  
		  </li>
          <li><a href="about.html">About</a></li>
		  <li><a href="news.html">News</a></li>
          <li><a href="services.html">Services</a>
				<ul style="display: none; visibility: visible;">
				  <li><a href="#">Web Design</a></li>
				  <li><a href="#">Logo design</a></li>
				  <li><a href="#">Print / Branding</a></li>
				  <li><a href="#">Online Marketing</a></li>
				  <li><a href="#">Seo services</a></li>
				</ul><!--END submenu services-->
          </li>
          <li><a href="portfolio.html">Portfolio</a>
				<ul style="display: none; visibility: visible;">
				  <li><a href="portfolio.html">Portfolio</a></li>
				  <li><a href="portfolio-single.html">Single page</a></li>
				</ul><!--END submenu porfolio-->			  
		  </li>
		  <li><a href="blog.html">Blog</a>
				<ul style="display: none; visibility: visible;">
				  <li><a href="blog.html">Blog</a></li>
				  <li><a href="blog-single.html">Blog single page</a></li>
				</ul><!--END submenu blog-->		  
		  </li>
		  <li><a href="gallery.html">Gallery</a></li>
		  <li><a href="contact.html" class="current">Contact</a></li>
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
		<p>585, Planet Earth Blvd.<br />
          City, Country - L4A 2Z2</p>
	  </div>

	  <div class="intro contact_info">
		<strong>Call us </strong>
		<p>Tel:1234 5678<br />
          Office:9876 5432</p>
	  </div>
	
		<div class="intro contact_info">
		<strong>Email us</strong>
		<p>General: <a href="#">ouremail@planetearth.com</a></p>
		<p><br />Support: <a href="#">ouremail@planetearth.com</a></p>
		<p><br />Join our team: <a href="#">ouremail@planetearth.com</a></p>
		</div>	
	


<form id="form" class="contactForm" method="post" action="send.php">
	<strong>Contact</strong>

	<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in anim id est laborum. 
Allamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in anim id est laborum.<br /><br />
	</p>
	<div class="message_sent">Thank you for contacting us. 
        Please continue viewing our website and we'll reply to you as soon as possible. </div> 
	
	<div>
		<label>Name <span class="font-11">(required)</span></label>
		<input name="name" type="text" class="required" />
	</div>

	<div>
		<label>Phone</label>
		<input name="phone" type="text" />		
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
		<input id="submitBtn" value="Submit" type="submit" class="submitBtn" />
	</div>

</form>

</div><!--END container-->

<div id="bottom_holder">
<div id="bottom">

<div>
	<span class="strong">About</span>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.<br /><br />
	<a href="#">www.yourwebsitename.com</a>		
	</p>
</div><!--END div-->

<div class="second">
	<span class="strong">Contact</span>
		<p>General inquiries: <a href="#">hello@yourprovidername.com</a></p>
		<p>Support:visit the <a href="#">FAQs</a></p>
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
				<li>PO Box No 12345</li>
				<li>Some guy`s name St, Town</li>
				<li>New Something 1234, Country<br /><br /></li>
				<li>(123) 456-7890 phone</li>
				<li>(123) 456-7890  fax</li>
				<li>hello@creative.com</li>
			</ul><!--ENDS ul-->				
		</div><!--END box-->
		
		<div class="box">
			<h1>Latest from blog </h1>
			<ul>
				<li><a href="#">Fusce eu eleifend eros.</a></li>
				<li><a href="#">Cras in tortor nisi.</a></li>
				<li><a href="#">Aliquam in imperdiet the massa.</a></li>
				<li><a href="#">Praesent convallis metus imperdiet the dui posuere sollicitudin.</a></li>
				<li><a href="#">Aliquam luctus tincidunt to faucibus.</a></li>
				<li><a href="#">Nullam tempor velit sit amet libero are aretra dignissim.</a></li>
				<li><a href="#">Phasellus venenatis hendrerit velit eget laoreet.</a></li>
				<li><a href="#">Lorem ipsum dolor sit amet.</a></li>
				<li><a href="#">Sed ut dapibus ante.</a></li>																			
			</ul><!--ENDS ul-->
		</div><!--END box-->
		
		<div class="box">
			<h1>What`s fresh </h1>
			<ul>
				<li><a href="#">Featured project</a></li>
				<li><a href="#">Some other project</a></li>
				<li><a href="#">Project number 3</a></li>
				<li><a href="#">The latest project number 4</a></li>
				<li><a href="#">Name of the project 5</a></li>
				<li><a href="#">And finally project 6 named something something</a></li>																				
			</ul><!--END ul-->
		</div><!--END box-->
				
		<div class="box">
			<h1>Features</h1>
			<ul>
				<li><a href="#">AdWords	Management</a></li>
				<li><a href="#">Search Engine Optimization</a></li>
				<li><a href="#">Social Media Marketing</a></li>
				<li><a href="#">Email Marketing</a></li>
				<li><a href="#">Web Design</a></li>
				<li><a href="#">Web Development</a></li>
				<li><a href="#">Print Design and Branding</a></li>
				<li><a href="#">Logo Design</a></li>																										
			</ul><!--END ul-->
		</div><!--END box-->
		
		<div class="boxes_holder_twitter">
	  		<div class="box_twitter">
				<p>Praesent convallis metus imperdiet the dui posuere sollicitudin.<a href="#">14 hours 29 min ago</a></p>
	      </div><!--END box_twitter-->
		</div><!--END boxes_holder_twitter-->
		
		<div class="subfooter">
			<ul>
				<li><a href="#">Home</a></li>
				<li><a href="#">About</a></li>
				<li><a href="#">Services</a></li>
				<li><a href="#">Portfolio</a></li>
				<li><a href="#">Blog</a></li>
				<li><a href="#">Gallery</a></li>
				<li><a href="#">Contact</a></li>
			</ul><!--?ND subfooter ul-->			<h3>Copyright  2009. Your web site name</h3>		
		</div><!--END subfooter-->					
	</div><!--END boxes holder-->
</div><!--END footer-->

<script language="javascript" type="text/javascript" src="javascript/wz_tooltip.js"></script>
</body>
</html>
