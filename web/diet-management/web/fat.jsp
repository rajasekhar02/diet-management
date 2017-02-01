<html>
    <head>
          <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script>
      function fat(){
          var gender=document.getElementById("gender").value;
          var weight=Number(document.getElementById("weight").value);
          var wc1=Number(document.getElementById("wc1").value);
          var wc2=Number(document.getElementById("wc2").value);
          var hc=Number(document.getElementById("hc").value);
          var fc=Number(document.getElementById("fc").value);
          var t;
          weight*=2.204;
          if(gender==="female")
              t = Math.cbrt((weight - (weight * .732 + 8.9787 + wc2 / 3.14 - wc1 * .157 - hc * .249 + fc * .434)) * 100 / weight); 
          else
              t = Math.ceil((weight - (weight * 1.082 + 94.42 - wc1 * 4.15)) * 100 / weight);
          document.getElementById("output").innerText=  "The body Fat is:"+t;     
      }
  </script>
  
  <script>
      $(document).ready(function(){
          $("a").click(function(){
              $(this).button('toggle');
          });
      });
      
  </script>
    </head>
<body style="background-color:#eef3f5;">
<center>
    <div class="container">
  <ul class="list-inline">
      <li><a href="#" class="btn btn-primary">BODY FAT</a></li>
      <li><a href="bmi.jsp" class="btn btn-primary">BMI</a></li>
      <li><a href="caloric.jsp" class="btn btn-primary">CALORIC NEEDS</a></li>
      <li><a href="nutritional.jsp" class="btn btn-primary">NUTRITIONAL NEEDS</a></li>
      <li><a href="ideal.jsp" class="btn btn-primary">IDEAL WEIGHT</a></li>
      <li><a href="heart.jsp" class="btn btn-primary">HEART RATE</a></li>
  </ul>
    <p>Determine your body fat percentage with our body fat calculator. Use a tape measure to determine your waist, hip and neck circumference. Then input your gender and measurements below to receive a body fat index based on average values. The body fat index is not an indicator of fitness level since the calculation is made with no regard to height or weight.</p>

<table>
<tr rowspan="6">
<td>
<h1>Calculate Your Body Fat Index</h1></td></tr>
<tr rowspan="6">
<td>Gender</td>
<td><input type="radio"  name="r1" checked id="gender" value="male">Male</td>
<td><input type="radio"  name="r1" id="gender" value="female">Female</td>
</tr>
<tr rowspan="6">
<td>Weight
<td><input type="text" name="txt2" style="width: 50px; height: 20px" id="weight"/>&nbsp;Pounds</td>
</tr>
<tr rowspan="6">
<td>Waist circumference
<td><input type="text" name="txt1" style="width: 50px; height: 20px" id="wc1"/>&nbsp;&nbsp;inches</td>
</tr>
<tr rowspan="6">
<td>Wrist circumference*
<td><input type="text" name="txt1" style="width: 50px; height: 20px"id="wc2" />&nbsp;&nbsp;inches</td>
</tr>
<tr rowspan="6">
<td>Hip circumference*
<td><input type="text" name="txt1" style="width: 50px; height: 20px" id="hc"/>&nbsp;&nbsp;inches</td>
</tr>
<tr rowspan="6">
<td>Forearm circumference*
<td><input type="text" name="txt1" style="width: 50px; height: 20px" id="fc"/>&nbsp;&nbsp;inches</td>
</tr>
</table>
    <input type="submit" name="btn1" style="width: 120px; height: 30px; background-color : yellow"value="Calculate" onclick="fat();">
    <h2><span id="output"></span></h2>    
    </div></center>
</body>
</html>