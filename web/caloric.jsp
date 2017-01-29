<html>
    <head>
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script>
      function calories()
      {
          var feet = Number(document.getElementById("feet").value);
          var inches = Number(document.getElementById("inches").value);
          var gender = document.getElementById("gender").value;
          var weight = Number(document.getElementById("weight").value);
          var age = Number(document.getElementById("age").value);
          var activity = document.getElementById("activity").value;
          var t=feet*12+inches;
          console.log(feet+" "+inches+" "+gender+" "+weight+" "+age+" "+activity+" "+t);
//          t=t*0.0254;
          var act=1;
          var val;
          if(gender==="Male"){
              console.log("male");
              weight=weight*2.20462*6.23;
              t=t*12.7;
              age=age*6.8;
              val=weight+t-age+66;
              console.log(age+""+val);
              if(activity==="high")
                  act=1.9;
              else if(activity==="low")
                  act=1.5;
              console.log(feet+" "+inches+" "+gender+" "+weight+" "+age+" "+activity+" "+t);
              val=Math.ceil(val*act);
          }
          if(gender==="Female"){
              if(activity==="high")
                  act=1.27;
              else if(activity==="low")
                  act=1.12;
              val=Math.ceil(354-6.91*age+act*(9.36*weight+726*t));
          }
          console.log(val);
          document.getElementById("output").innerText = val;
          
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
      <li><a href="fat.jsp" class="btn btn-primary ">BODY FAT</a></li>
      <li><a href="bmi.jsp" class="btn btn-primary">BMI</a></li>
      <li><a href="#" class="btn btn-primary">CALORIC NEEDS</a></li>
      <li><a href="nutritional.jsp" class="btn btn-primary">NUTRITIONAL NEEDS</a></li>
      <li><a href="ideal.jsp" class="btn btn-primary">IDEAL WEIGHT</a></li>
      <li><a href="heart.jsp" class="btn btn-primary">HEART RATE</a></li>
  </ul>
    <p>Use our calorie-intake calculator to determine your daily caloric needs based on your height, weight, age and activity level. In addition to determining the calories needed to maintain weight, use this as a calorie burner calculator and figure out how many calories you need to burn in order to drop pounds. Then use the nutritional needs calculator and figure out how to break those calories into carbs, proteins and fat.</p>
<table class="table table-inverse">
    <tr>
<td>Gender</td>
<td><input type="radio"  name="r2" checked value="Male" id="gender">Male</td>
<td><input type="radio"  name="r2" value="Female" id="gender">Female</td>
</tr>
<tr rowspan="6">
<td>Height
<td><input type="text"   style="width: 50px; height: 20px" id="feet"/>&nbsp;&nbsp;Feet</td>
<td><input type="text"   style="width: 50px; height: 20px" id="inches"/>&nbsp;&nbsp;inches</td></tr>
<tr rowspan="6">
<td>Weight
<td><input type="text"   style="width: 50px; height: 20px" id="weight"/>&nbsp;Kilos</td>
</td></tr>
<tr rowspan="6">
<td>Age
<td><input type="text"  style="width: 50px; height: 20px"id="age">&nbsp;Years</td></tr>
<tr rowspan="6">
<td>Active Level
        <td><select id="activity">
                <option selected value="high">High</option>
                <option value="low">Low</option>
                <option value="sedentary">Sedentary</option>
    </select></td></tr>
</table>
    <input type="submit" style="width: 120px; height: 30px; background-color : yellow" value="Calculate" onclick="calories();">
    <h2>To maintain your current weight you'll need <span id="output">_</span> calories per day</h2>
</div>
</center>
</body>
</html>