
<html>
    <head>
         <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            function computeBMI() {
                // user inputs
                var feet = Number(document.getElementById("feet").value);
                var inches = Number(document.getElementById("inches").value);
                var weight = Number(document.getElementById("weight").value);

                //Perform calculation
                var height=(12*feet+inches)*2.54;
                //        var BMI = weight /Math.pow(height, 2)*10000;
                var BMI = Math.round(weight / Math.pow(height, 2) *10000);
                document.getElementById("output").innerText="Your BMI is:";
                //Display result of calculation
                document.getElementById("output").innerText += (Math.round(BMI * 100) / 100).toString();

                var output = Math.round(BMI * 100) / 100;
                document.getElementById("comment").innerText="That means you are:";
                if (output < 18.5)
                    document.getElementById("comment").innerText += "Underweight";
                else if (output >= 18.5 && output <= 25)
                    document.getElementById("comment").innerText += "Normal";
                else if (output >= 25 && output <= 30)
                    document.getElementById("comment").innerText += "Obese";
                else if (output > 30)
                    document.getElementById("comment").innerText += "Overweight";
                // document.getElementById("answer").value = output; 
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
                  <li><a href="heart.jsp" class="btn btn-primary">HEART RATE</a></li>
                </ul>
            <p>Knowing BMI can help adult men and women understand their overall health. Use the BMI calculator below to determine your body mass index by inputting your height and weight. The BMI calculator uses the following BMI formula: Weight (lb) / (Height (in))² x 703.</p>
                <h1>Calculate BMI</h1>
                <table class="table table-inverse">
                    <tr rowspan="6">
                        <td>Height</td>
                        <td><input type="text"  style="width: 50px; height: 20px" id="feet" />&nbsp;&nbsp;Feet</td>
                        <td><input type="text"  style="width: 50px; height: 20px" id="inches" />&nbsp;&nbsp;Inches</td></tr>
                    <tr rowspan="6">
                        <td>Weight</td>
                        <td><input type="text"  style="width: 50px; height: 20px" id="weight" />&nbsp;Kgs</td>
                    </tr>
                </table>
                <input type="submit" style="width: 120px; height: 30px; background-color : yellow"value="Calculate" onclick="computeBMI();">
                <h1> <span id="output"></span></h1>
                <h2><span id="comment"></span> </h2> 
                <span id="button"><input type="submit" value="Save" onclick="save.jsp"</span>
            </div>
        </center>
    </body>
</html>