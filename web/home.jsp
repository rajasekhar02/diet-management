<html>
    <head>
  <title>DMS Home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<style>
    
.mySlides {display:none;}
</style>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
</head>
   <body background="images/home.jpg">
        <div class="container">
    <div style="background:transparent !important" class="jumbotron">
        <center><h1 style="font-family:comic;"><font color="white">DIET MANAGEMENT SYSTEM</font></h1>
           <a href="home.jsp" class="btn btn-info"> Home </a>
           <a href="adminlogin.jsp" class="btn btn-info">Admin</a>
           <a href="userlogin.jsp" class="btn btn-info">User</a>
           <a href="dieticianlogin.jsp" class="btn btn-info">Dietician</a></center>
        <style>
#bubblebox{ width:400px; height:400px; margin:50px auto; border:0px solid #AAA; }
#bubbles{ width:auto; margin:0px auto; text-align:center; }
#bubbles > div{ display:inline-block; width:10px; height:10px; margin:24px 10px 0px 10px; background:rgba(0,0,0,.1); text-align:center; border:2px solid #999; border-radius:100%; font-size:17px; text-decoration:none; transition: background 0.3s linear 0s; cursor:pointer; }
#bubblecontent{ margin:0px auto; transition:opacity 0.3s linear 0s; font-family: Arial;}
#bubblecontent > img{ text-align:center; }
</style>
<script>
// This simple function returns object reference for elements by ID
function _(x){return document.getElementById(x);}
// Variables for bubble array, bubble index, and the setInterval() variable
var ba, bi=0, intrvl;
// bca - Bubble Content Array. Put your content here.
var bca = [
    '<img src="images/keep.jpg">',
	'<img src="images/easyway.jpg">',
	'<img src="images/schedule.jpg">',
	'<img src="images/keep.jpg">'
];
// This function is triggered by the bubbleSlide() function below
function bubbles(bi){
	// Fade-out the content
	_("bubblecontent").style.opacity = 0;
	// Loop over the bubbles and change all of their background color
	for(var i=0; i < ba.length; i++){
		ba[i].style.background = "rgba(0,0,0,.1)";
	}
	// Change the target bubble background to be darker than the rest
	ba[bi].style.background = "#999";
	// Stall the bubble and content changing for just 300ms
	setTimeout(function(){
		// Change the content
		_("bubblecontent").innerHTML = bca[bi];
		// Fade-in the content
		_("bubblecontent").style.opacity = 1;
	}, 300);
}
// This function is set to run every 5 seconds(5000ms)
function bubbleSlide(){
	bi++; // Increment the bubble index number
	// If bubble index number is equal to the amount of total bubbles
	if(bi === ba.length){
		bi = 0; // Reset the bubble index to 0 so it loops back at the beginning
	}
	// Make the bubbles() function above run
	bubbles(bi);
}
// Start the application up when document is ready
window.addEventListener("load", function(){
	// Get the bubbles array
	ba = _("bubbles").children;
	// Set the interval timing for the slideshow speed
	intrvl = setInterval(bubbleSlide, 4000);
});
</script>
<div id="bubblebox">
  <div id="bubbles">
    <div onclick="bubbles(0); clearInterval(intrvl);" style="background:#999;"></div>
    <div onclick="bubbles(1); clearInterval(intrvl);"></div>
    <div onclick="bubbles(2); clearInterval(intrvl);"></div>
    <div onclick="bubbles(3); clearInterval(intrvl);"></div>
  </div>
  <div id="bubblecontent">
  <img src="images/keep.jpg">
  </div>
</div>
<br><br><br></div><br><br>      
</body>
</html>