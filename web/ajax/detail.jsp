<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="database.Rov"%>
<%
    String id = request.getParameter("id"); 
    Rov db = new Rov();    
    ResultSet data ;         
    data = db.GetById(id);        
%>

<div id="exTab2" class="container" style="max-width: 980px;">	
    <ul class="nav nav-tabs col-lg-12">
        <li class="active"><a href="#1" data-toggle="tab">ORP Sensor </a> </li>
        <li> <a  href="#2" data-toggle="tab">EC Sensor</a> </li>       
        <li><a href="#3" data-toggle="tab">DO Sensor</a> </li>
        <li><a href="#4" data-toggle="tab">TDS Sensor</a> </li>
        <li><a href="#5" data-toggle="tab">SAL Sensor</a> </li>
        <li><a href="#6" data-toggle="tab">SG Sensor</a> </li>
        <li><a href="#7" data-toggle="tab">PH Sensor</a> </li>
        <li><a href="#8" data-toggle="tab">Suhu Sensor</a> </li>
        
    </ul>

    <div class="tab-content col-lg-12">
        <div class="tab-pane active" id="1">
            <div id="container" class="col-lg-12" style="max-width: 970px;"></div>
        </div>				
        <div class="tab-pane" id="2">
            <div id="container2" class="col-lg-12" style="max-width: 970px;"></div>
        </div>

        <div class="tab-pane" id="3">
            <div id="container3" class="col-lg-12" style="max-width: 970px;"></div>
        </div>
        
        <div class="tab-pane" id="4">
            <div id="container4" class="col-lg-12" style="max-width: 970px;"></div>
        </div>
        
        <div class="tab-pane" id="5">
            <div id="container5" class="col-lg-12" style="max-width: 970px;"></div>
        </div>				
        <div class="tab-pane" id="6">
            <div id="container6" class="col-lg-12" style="max-width: 970px;"></div>
        </div>

        <div class="tab-pane" id="7">
            <div id="container7" class="col-lg-12" style="max-width: 970px;"></div>
        </div>
        
        <div class="tab-pane" id="8">
            <div id="container8" class="col-lg-12" style="max-width: 970px;"></div>
        </div>
    </div>
  </div>



<script>
    $('#container').highcharts({
            chart: {
                type: 'spline',
                animation: Highcharts.svg, // don't animate in old IE
                marginRight: 10,
                events: {
                    load: function () {
                           chart1 = this.series[0];                     
                    }
                }
            },
            title: {
                text: 'Live ORP Sensor data'
            },
            xAxis: {
                type: 'datetime',
                tickPixelInterval: 150
            },
            yAxis: {
                title: {
                    text: 'Value'
                },
                plotLines: [{
                    value: 0,
                    width: 1,
                    color: '#808080'
                }]
            },
            tooltip: {
                formatter: function () {
                    return '<b>' + this.series.name + '</b><br/>' +
                        Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', this.x) + '<br/>' +
                        Highcharts.numberFormat(this.y, 2);
                }
            },
            legend: {
                enabled: false
            },
            exporting: {
                enabled: false
            },
            series: [{
                name: 'ORP Sensor',
                data: (function () {
                    // generate an array of random data
                    var data = [];
                    <% data.beforeFirst();  while (data.next()) { 
                        String Str = new String(data.getString("timestamp"));
                    %>          
                        time = (new Date('<%= Str.substring(0, 10)%>T<%= Str.substring(11, Str.length()-2)%>')).getTime();
                        data.push({
                            x: time,
                            y: <%= data.getFloat("orp")%>
                        });
                    <% } %>
                    return data;
                }())
            }]
        });
    
    $('#container2').highcharts({
            chart: {
                type: 'spline',
                animation: Highcharts.svg, // don't animate in old IE
                marginRight: 10,
                events: {
                    load: function () {
                            chart2 = this.series[0];                     
                    }
                }
            },
            title: {
                text: 'Live EC Sensor data'
            },
            xAxis: {
                type: 'datetime',
                tickPixelInterval: 150
            },
            yAxis: {
                title: {
                    text: 'Value'
                },
                plotLines: [{
                    value: 0,
                    width: 1,
                    color: '#808080'
                }]
            },
            tooltip: {
                formatter: function () {
                    return '<b>' + this.series.name + '</b><br/>' +
                        Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', this.x) + '<br/>' +
                        Highcharts.numberFormat(this.y, 2);
                }
            },
            legend: {
                enabled: false
            },
            exporting: {
                enabled: false
            },
            series: [{
                name: 'EC Sensor',
                data: (function () {
                    // generate an array of random data
                    var data = [];
                    <% data.beforeFirst(); while (data.next()) { 
                        String Str = new String(data.getString("timestamp"));
                    %>          
                        time = (new Date('<%= Str.substring(0, 10)%>T<%= Str.substring(11, Str.length()-2)%>')).getTime();
                        data.push({
                            x: time,
                            y: <%= data.getFloat("ec")%>
                        });
                    <% } %>
                    return data;
                }())
            }]
        });    
         
    $('#container3').highcharts({
            chart: {
                type: 'spline',
                animation: Highcharts.svg, // don't animate in old IE
                marginRight: 10,
                events: {
                    load: function () {
                        chart3 = this.series[0];                     
                    }
                }
            },
            title: {
                text: 'Live DO Sensor data'
            },
            xAxis: {
                type: 'datetime',
                tickPixelInterval: 150
            },
            yAxis: {
                title: {
                    text: 'Value'
                },
                plotLines: [{
                    value: 0,
                    width: 1,
                    color: '#808080'
                }]
            },
            tooltip: {
                formatter: function () {
                    return '<b>' + this.series.name + '</b><br/>' +
                        Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', this.x) + '<br/>' +
                        Highcharts.numberFormat(this.y, 2);
                }
            },
            legend: {
                enabled: false
            },
            exporting: {
                enabled: false
            },
            series: [{
                name: 'DO Sensor',
                data: (function () {
                    // generate an array of random data
                    var data = [];
                    <% data.beforeFirst();  while (data.next()) { 
                        String Str = new String(data.getString("timestamp"));
                    %>          
                        time = (new Date('<%= Str.substring(0, 10)%>T<%= Str.substring(11, Str.length()-2)%>')).getTime();
                        data.push({
                            x: time,
                            y: <%= data.getFloat("ph")%>
                        });
                    <% } %>
                    return data;
                }())
            }]
        });               
    
    $('#container4').highcharts({
            chart: {
                type: 'spline',
                animation: Highcharts.svg, // don't animate in old IE
                marginRight: 10,
                events: {
                    load: function () {
                            chart4 = this.series[0];                     
                    }
                }
            },
            title: {
                text: 'Live TDS Sensor data'
            },
            xAxis: {
                type: 'datetime',
                tickPixelInterval: 150
            },
            yAxis: {
                title: {
                    text: 'Value'
                },
                plotLines: [{
                    value: 0,
                    width: 1,
                    color: '#808080'
                }]
            },
            tooltip: {
                formatter: function () {
                    return '<b>' + this.series.name + '</b><br/>' +
                        Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', this.x) + '<br/>' +
                        Highcharts.numberFormat(this.y, 2);
                }
            },
            legend: {
                enabled: false
            },
            exporting: {
                enabled: false
            },
            series: [{
                name: 'TDS Sensor',
                data: (function () {
                    // generate an array of random data
                    var data = [];
                    <% data.beforeFirst(); while (data.next()) { 
                        String Str = new String(data.getString("timestamp"));
                    %>          
                        time = (new Date('<%= Str.substring(0, 10)%>T<%= Str.substring(11, Str.length()-2)%>')).getTime();
                        data.push({
                            x: time,
                            y: <%= data.getFloat("tds")%>
                        });
                    <% } %>
                    return data;
                }())
            }]
        });
    
    $('#container5').highcharts({
            chart: {
                type: 'spline',
                animation: Highcharts.svg, // don't animate in old IE
                marginRight: 10,
                events: {
                    load: function () {
                           chart5 = this.series[0];
                    }
                }
            },
            title: {
                text: 'Live SAL Sensor data'
            },
            xAxis: {
                type: 'datetime',
                tickPixelInterval: 150
            },
            yAxis: {
                title: {
                    text: 'Value'
                },
                plotLines: [{
                    value: 0,
                    width: 1,
                    color: '#808080'
                }]
            },
            tooltip: {
                formatter: function () {
                    return '<b>' + this.series.name + '</b><br/>' +
                        Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', this.x) + '<br/>' +
                        Highcharts.numberFormat(this.y, 2);
                }
            },
            legend: {
                enabled: false
            },
            exporting: {
                enabled: false
            },
            series: [{
                name: 'SAL Sensor',
                data: (function () {
                    // generate an array of random data
                    var data = [];
                    <% data.beforeFirst();  while (data.next()) { 
                        String Str = new String(data.getString("timestamp"));
                    %>          
                        time = (new Date('<%= Str.substring(0, 10)%>T<%= Str.substring(11, Str.length()-2)%>')).getTime();
                        data.push({
                            x: time,
                            y: <%= data.getFloat("sal")%>
                        });
                    <% } %>
                    return data;
                }())
            }]
        });
     
    $('#container6').highcharts({
            chart: {
                type: 'spline',
                animation: Highcharts.svg, // don't animate in old IE
                marginRight: 10,
                events: {
                    load: function () {
                         chart6 = this.series[0];                     
                    }
                }
            },
            title: {
                text: 'Live SG Sensor data'
            },
            xAxis: {
                type: 'datetime',
                tickPixelInterval: 150
            },
            yAxis: {
                title: {
                    text: 'Value'
                },
                plotLines: [{
                    value: 0,
                    width: 1,
                    color: '#808080'
                }]
            },
            tooltip: {
                formatter: function () {
                    return '<b>' + this.series.name + '</b><br/>' +
                        Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', this.x) + '<br/>' +
                        Highcharts.numberFormat(this.y, 2);
                }
            },
            legend: {
                enabled: false
            },
            exporting: {
                enabled: false
            },
            series: [{
                name: 'SG Sensor',
                data: (function () {
                    // generate an array of random data
                    var data = [];
                    <% data.beforeFirst();  while (data.next()) { 
                        String Str = new String(data.getString("timestamp"));
                    %>          
                        time = (new Date('<%= Str.substring(0, 10)%>T<%= Str.substring(11, Str.length()-2)%>')).getTime();
                        data.push({
                            x: time,
                            y: <%= data.getFloat("sg")%>
                        });
                    <% } %>
                    return data;
                }())
            }]
        });
    
    $('#container7').highcharts({
            chart: {
                type: 'spline',
                animation: Highcharts.svg, // don't animate in old IE
                marginRight: 10,
                events: {
                    load: function () {
                         chart7 = this.series[0];                     
                    }
                }
            },
            title: {
                text: 'Live PH Sensor data'
            },
            xAxis: {
                type: 'datetime',
                tickPixelInterval: 150
            },
            yAxis: {
                title: {
                    text: 'Value'
                },
                plotLines: [{
                    value: 0,
                    width: 1,
                    color: '#808080'
                }]
            },
            tooltip: {
                formatter: function () {
                    return '<b>' + this.series.name + '</b><br/>' +
                        Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', this.x) + '<br/>' +
                        Highcharts.numberFormat(this.y, 2);
                }
            },
            legend: {
                enabled: false
            },
            exporting: {
                enabled: false
            },
            series: [{
                name: 'PH Sensor',
                data: (function () {
                    // generate an array of random data
                    var data = [];
                    <% data.beforeFirst();  while (data.next()) { 
                        String Str = new String(data.getString("timestamp"));
                    %>          
                        time = (new Date('<%= Str.substring(0, 10)%>T<%= Str.substring(11, Str.length()-2)%>')).getTime();
                        data.push({
                            x: time,
                            y: <%= data.getFloat("do")%>
                        });
                    <% } %>
                    return data;
                }())
            }]
        }); 
    
    $('#container8').highcharts({
            chart: {
                type: 'spline',
                animation: Highcharts.svg, // don't animate in old IE
                marginRight: 10,
                events: {
                    load: function () {
                        chart8 = this.series[0];                     
                    }
                }
            },
            title: {
                text: 'Live Suhu Sensor data'
            },
            xAxis: {
                type: 'datetime',
                tickPixelInterval: 150
            },
            yAxis: {
                title: {
                    text: 'Value'
                },
                plotLines: [{
                    value: 0,
                    width: 1,
                    color: '#808080'
                }]
            },
            tooltip: {
                formatter: function () {
                    return '<b>' + this.series.name + '</b><br/>' +
                        Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', this.x) + '<br/>' +
                        Highcharts.numberFormat(this.y, 2);
                }
            },
            legend: {
                enabled: false
            },
            exporting: {
                enabled: false
            },
            series: [{
                name: 'Suhu Sensor',
                data: (function () {
                    // generate an array of random data
                    var data = [];
                    <% data.beforeFirst();  while (data.next()) { 
                        String Str = new String(data.getString("timestamp"));
                    %>          
                        time = (new Date('<%= Str.substring(0, 10)%>T<%= Str.substring(11, Str.length()-2)%>')).getTime();
                        data.push({
                            x: time,
                            y: <%= data.getFloat("suhu")%>
                        });
                    <% } %>
                    return data;
                }())
            }]
        });               

</script>
<div id="new_sensor"></div>
<script>
    <% data.last();  String Str = new String(data.getString("timestamp"));        %>
    setTimeout(function(){
        new_sensor(<%= id%>,<%= data.getString("id")%>);    
        time = (new Date('<%= Str.substring(0, 10)%>T<%= Str.substring(11, Str.length()-2)%>')).getTime();        
    },1000);
</script>
		

     
