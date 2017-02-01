<html>
<head>
     <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script>
    function calculate()
    {
        var feet = Number(document.getElementById("feet").value);
        var inches = Number(document.getElementById("inches").value);
        var t,n,r=feet*12+inches;

//          t=t*0.0254;
        var val;
        switch (r) {
            case 58:
                t = 91,
                        n = 115;
                break;
            case 59:
                t = 94,
                        n = 119;
                break;
            case 60:
                t = 97,
                        n = 123;
                break;
            case 61:
                t = 100,
                        n = 127;
                break;
            case 62:
                t = 104,
                        n = 131;
                break;
            case 63:
                t = 107,
                        n = 135;
                break;
            case 64:
                t = 110,
                        n = 140;
                break;
            case 65:
                t = 114,
                        n = 144;
                break;
            case 66:
                t = 118,
                        n = 148;
                break;
            case 67:
                t = 121,
                        n = 153;
                break;
            case 68:
                t = 125,
                        n = 158;
                break;
            case 69:
                t = 128,
                        n = 162;
                break;
            case 70:
                t = 132,
                        n = 167;
                break;
            case 71:
                t = 136,
                        n = 172;
                break;
            case 72:
                t = 140,
                        n = 177;
                break;
            case 73:
                t = 144,
                        n = 182;
                break;
            case 74:
                t = 148,
                        n = 186;
                break;
            case 75:
                t = 152,
                        n = 192;
                break;
            case 76:
                t = 156,
                        n = 197;
        }
        val=Math.ceil(t*0.453);
        var c=Math.ceil(n*0.453);
        document.getElementById("output").innerText = val.toString()+" to "+ c.toString();

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
      <li><a href="#" class="btn btn-primary">IDEAL WEIGHT</a></li>
      <li><a href="heart.jsp" class="btn btn-primary">HEART RATE</a></li>

  </ul>
    <p>?What?s my ideal weight?? It?s a pretty normal question for most men and women. Knowing your ideal weight can help you make healthy choices for fitness, nutrition and lifestyle. Use this ideal weight calculator to find out the ideal weight for someone your height.</p>

<table>
<tr rowspan="6">
<td>
<h1>Calculate Your Ideal Weight</h1></td>
<tr rowspan="6">
<td>Height
<td><input type="text" name="txt1" style="width: 50px; height: 20px" id="feet" />&nbsp;&nbsp;Feet</td>
<td><input type="text" name="txt2" style="width: 50px; height: 20px" id="inches" />&nbsp;&nbsp;inches</td></tr>
</table>
    <input type="submit" onclick="calculate()" name="btn1" style="width: 120px; height: 30px; background-color : yellow" value="Calculate">
    <h2>Ideal weight for your height is  <span id="output"></span></h2>

</div></center>
</body>
</html>