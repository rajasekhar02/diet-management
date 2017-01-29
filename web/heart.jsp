<html>
    <head>
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script>
      function heartrate(){
          var age=Number(document.getElementById("age").value);
          var level=Number(document.getElementById("level").value);
          var n=level/100;
          var i=(220-age)*.55;
          var s=(220-age)*.85;
          var o=220;
          o*=n;
          document.getElementById("avg").innerText = "The number of heart beats per minute at this level are:"+o;
          document.getElementById("min").innerText = "The min and max beats per minute are:"+Math.ceil(i);
          document.getElementById("max").innerText = Math.ceil(s);
          
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
      <li><a href="fat.jsp" class="btn btn-primary">BODY FAT</a></li>
      <li><a href="bmi.jsp" class="btn btn-primary">BMI</a></li>
      <li><a href="caloric.jsp" class="btn btn-primary">CALORIC NEEDS</a></li>
      <li><a href="nutritional.jsp" class="btn btn-primary">NUTRITIONAL NEEDS</a></li>
      <li><a href="ideal.jsp" class="btn btn-primary">IDEAL WEIGHT</a></li>
      <li><a href="#" class="btn btn-primary">HEART RATE</a></li>
  </ul>
    <p>Ever ask yourself, "how do I find my target heart rate?" Finding your target heart rate is easy with our target heart rate calculator. Target heart rate calculation can be determined for any age and activity level, enabling you to use a heart rate monitor and get the most benefit from your workouts.</p>

<table>
<tr rowspan="6">
<td>
<h1>Calculate Your Target Heart rate</h1></td>
<tr rowspan="6">
<td>Age
<td><input type="text" id="age" style="width: 50px; height: 20px" />&nbsp;&nbsp;Years</td>
</tr>
<tr rowspan="6">
<td>Level of exercise
<td><input type="text" id="level" style="width: 50px; height: 20px" />&nbsp;&nbsp;% of maximum heart rate</td>
</tr>
</table>
    <input type="submit" style="width: 120px; height: 30px; background-color : yellow" value="Calculate" onclick="heartrate();">
    <h2><span id="avg"></span></h2>
    <h2><span id="min"></span>-<span id="max"></span></h2>
    </div></center>
</body>
</html>