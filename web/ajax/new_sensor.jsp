<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="database.Rov"%>
<%@page import="com.google.gson.Gson"%>
<%
    String id = request.getParameter("id"); 
    String id_old = request.getParameter("id_old"); 
    Rov db = new Rov();        
    ResultSet data ;         
    data = db.GetById(id,id_old);        
    if(db.NumRows() != 0){
        int no=0; 
        String Str;    
    %>
    <script>    
    <%  while (data.next()) { 
            no++; 
            Str = new String(data.getString("timestamp"));        
    %>
        time = (new Date('<%= Str.substring(0, 10)%>T<%= Str.substring(11, Str.length()-2)%>')).getTime();
        chart1.addPoint([time, <%= data.getFloat("orp")%>], true, true);
        chart2.addPoint([time, <%= data.getFloat("ec")%>], true, true);
        chart3.addPoint([time, <%= data.getFloat("ph")%>], true, true);
        chart4.addPoint([time, <%= data.getFloat("tds")%>], true, true);    
        chart5.addPoint([time, <%= data.getFloat("sal")%>], true, true);
        chart6.addPoint([time, <%= data.getFloat("sg")%>], true, true);
        chart7.addPoint([time, <%= data.getFloat("do")%>], true, true);
        chart8.addPoint([time, <%= data.getFloat("suhu")%>], true, true);    
        
    <%  } 
        data.last();
    %>
        new_sensor(<%= data.getString("rov_id")%>,<%= data.getString("id")%>);
    </script>    
<%
    }
%>    
     
