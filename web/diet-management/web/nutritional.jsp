<html>
    <head>
         <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script>
        function calculate() {
            console.log(document.getElementById("calories").value);
            var n = parseInt(document.getElementById("calories").value)
            , r = Math.ceil(n * .45)
            , i = Math.ceil(n * .65)
            , s = Math.ceil(r / 4)
            , o = Math.ceil(i / 4)
            , u = Math.ceil(n * .1)
            , a = Math.ceil(n * .35)
            , f = Math.ceil(u / 4)
            , l = Math.ceil(a / 4)
            , c = Math.ceil(n * .2)
            , h = Math.ceil(n * .35)
            , p = Math.ceil(c / 9)
            , d = Math.ceil(h / 9);

            document.getElementById("Carbohydrates").innerText = s.toString()+"-"+ o.toString()+"Grams/Day"+"\t"+ r.toString()+"-"+ i.toString()+"Calories/Day";
            document.getElementById("Proteins").innerText = f.toString()+"-"+ l.toString()+"Grams/Day"+"\t"+ u.toString()+"-"+ a.toString()+"Calories/Day";
            document.getElementById("Fats").innerText = p.toString()+"-"+ d.toString()+"Grams/Day"+"\t"+ c.toString()+"-"+ h.toString()+"Calories/Day";
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
      <li><a href="#" class="btn btn-primary">NUTRITIONAL NEEDS</a></li>
      <li><a href="ideal.jsp" class="btn btn-primary">IDEAL WEIGHT</a></li>
      <li><a href="heart.jsp" class="btn btn-primary">HEART RATE</a></li>

  </ul>
    <p>After you've used Active's calorie calculator to determine your daily caloric needs, use this nutritional needs calculator to find out how to break out those calories into carbohydrates, proteins and fats.</p>
             <table>
                 <tr rowspan="6"><td><h2>Calculate Your Nutritional Needs </h2></td></tr>
                 <tr>
                    <td>Your daily caloric needs</td>
                    <td><input type="text" name="txt1" style="width: 50px; height: 20px" id = "calories" />&nbsp;&nbsp;Calories</td>
                 </tr>
                 <tr>
                    <td><span id="Carbohydrates"></span></td></tr>
                <tr>
                    <td><span id="Proteins"></span></td></tr>
                <tr>  <td><span id="Fats"></span></td>
                </tr>
             </table>
    <input type="button"  style="width: 120px; height: 30px; background-color : yellow" onclick="calculate()" value="Calculate">

    </center>
    </body>
</html>