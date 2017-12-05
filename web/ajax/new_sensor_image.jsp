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
        while (data.next()) {
%>
        <div class="col-xs-3">
            <a href="#" class="thumbnail">
                <img src="img/<%= data.getString("image")%>">
                  <div class="caption">
                    <h3><%= data.getTimestamp("timestamp")%></h3>
                 </div>
            </a>
        </div>
<%  
        } 
        data.last();
%>
    <script>
        new_sensor(<%= data.getString("rov_id")%>,<%= data.getString("id")%>);
    </script>    
<%
    }
%>    
     
