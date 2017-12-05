<! -- <table id="data_permintaan" class="table">
    <thead>        
        <tr>
            <th>Time</th>
            <th>EC Sensor</th>
            <th>ORP Sensor</th>            
            <th>DO Sensor</th>
            <th>PH Sensor</th>                        
            <th>Image</th>
        </tr>
    </thead>
    <tbody>
            <tr id="TopTable">
                <td colspan="6" id="new_sensor" style="text-align: center;"> </td>
            </tr>
        <%  int no = 0; while (data.next()) { no++; %>     
            <% if(no==1) { %>
                <script>  
                    setTimeout(function(){
                       check_new_sensor(<%= data.getInt("rov_id")%>,<%= data.getInt("id")%>); 
                    },5000);
                </script>
            <% } %>
            <tr>
                <td><%= data.getTimestamp("timestamp")%></td>
                <td><%= data.getFloat("ec")%></td>
                <td><%= data.getFloat("orp")%></td>            
                <td><%= data.getFloat("do")%></td>
                <td><%= data.getFloat("ph")%></td>                        
                <td><img src="img/<%= data.getString("image")%>" style="max-height: 100px; max-height: 100px;"></td>
            </tr>
        <% } %>
    </tbody>
</table>     -->











<script>
     $('#container').highcharts({
            chart: {
                type: 'spline',
                animation: Highcharts.svg, // don't animate in old IE
                marginRight: 10,
                events: {
                    load: function () {

                        // set up the updating of the chart each second
                        var series = this.series[0];
                        setInterval(function () {
                            var x = (new Date()).getTime(), // current time
                                y = Math.random();
                            series.addPoint([x, y], true, true);
                        }, 1000);
                    }
                }
            },
            title: {
                text: 'Live random data'
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
                name: 'Random data',
                data: (function () {
                    // generate an array of random data
                    var data = [],
                        time = (new Date()).getTime(),
                        i;

                    for (i = -19; i <= 0; i += 1) {
                        data.push({
                            x: time + i * 1000,
                            y: Math.random()
                        });
                    }
                    return data;
                }())
            }]
        });

    </script>
    
    