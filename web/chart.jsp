<html>
    <body>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="com.google.gson.*" %>

 <script src="scripts/fusioncharts.js"></script>
<!--
        Include the `fusioncharts.php` file that contains functions  to embed the charts.
-->
        <%@page import="fusioncharts.FusionCharts" %>

<%
    
/* 
    The following 4 code lines contain the database connection information.
    Alternatively, you can move these code lines to a separate file and
    include the file here. You can also modify this code based on your 
    database connection. 
*/

String hostdb = "localhost:3306";  // MySQl host
String userdb = "root";  // MySQL username
String passdb = "root";  // MySQL password
String namedb = "diet";  // MySQL database name
    // Establish a connection to the database
    DriverManager.registerDriver(new com.mysql.jdbc.Driver());
    Connection con = DriverManager.getConnection("jdbc:mysql://" + hostdb + "/" + namedb , userdb , passdb);
   
    %>
    <div id="chart"></div>

    
     
    <%
     /*
        google-gson

        Gson is a Java library that can be used to convert Java Objects into 
        their JSON representation. It can also be used to convert a JSON string to 
        an equivalent Java object. Gson can work with arbitrary Java objects including
        pre-existing objects that you do not have source-code of.
        link : https://github.com/google/gson    
     */

        Gson gson = new Gson();
        String ufid=session.getAttribute("uid").toString();
        
        // Form the SQL query that returns the top 10 most populous countries
        String sql="select bmi,dated from bmi where ufid='"+ufid+"'";

        // Execute the query.
        PreparedStatement pt=con.prepareStatement(sql);    
        ResultSet rs=pt.executeQuery();
        
        // The 'chartobj' map object holds the chart attributes and data.
        Map<String, String> chartobj = new HashMap<String, String>();
        
        chartobj.put("caption" , "BMI Report");
        chartobj.put("paletteColors" , "#0075c2");
        chartobj.put("bgColor" , "#ffffff");
        chartobj.put("borderAlpha", "20");
        chartobj.put("canvasBorderAlpha", "0");
        chartobj.put("usePlotGradientColor", "0");
        chartobj.put("plotBorderAlpha", "10");
        chartobj.put("showXAxisLine", "1");
        chartobj.put("xAxisLineColor" , "#999999");
        chartobj.put("showValues" , "0");
        chartobj.put("divlineColor" , "#999999");
        chartobj.put("divLineIsDashed" , "1");
        chartobj.put("showAlternateHGridColor" , "0");

        // Push the data into the array using map object.
        ArrayList arrData = new ArrayList();
        while(rs.next())
        {
            Map<String, String> lv = new HashMap<String, String>();
            lv.put("label", rs.getString("dated"));
            lv.put("value", rs.getString("bmi"));
            arrData.add(lv);             
        }
        
        //close the connection.
        rs.close();

        //create 'dataMap' map object to make a complete FC datasource.
        
         Map<String, String> dataMap = new LinkedHashMap<String, String>();  
    /*
        gson.toJson() the data to retrieve the string containing the
        JSON representation of the data in the array.
    */
         dataMap.put("chart", gson.toJson(chartobj));
         dataMap.put("data", gson.toJson(arrData));
/*
    Create an object for the column chart using the FusionCharts JSP class constructor. 
    Syntax for the constructor -
  new FusionCharts("type of chart", 
  "unique chart id", 
  "width of chart", 
  "height of chart", 
  "div id to render the chart", 
  "type of data", 
  "actual data in string format")
         
    Because we are using JSON data to render the chart, the data format will be `json`. 
    The object `dataMap` holds all the JSON data for the chart, 
    and will be passed as the value for the data source parameter of the constructor.
*/
        FusionCharts column2DChart= new FusionCharts(
                    "line",// chartType
                    "chart1",// chartId
                    "600","400",// chartWidth, chartHeight
                    "chart",// chartContainer
                    "json",// dataFormat
                    gson.toJson(dataMap) //dataSource
                );
       
        %>
        
<!--    Step 5: Render the chart    -->                
        <%=column2DChart.render()%>
</body>
</html>