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
<div class="row" >
	<% while (data.next()) {  %>
        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 text-center" style="max-height: 250px; max-width: 250px;">
            <a class="thumbnail">
                <%
                    String m = data.getString("image");
                    if(m.startsWith("http")){ %>
                        <img src="<%= data.getString("image")%>" title="<%= data.getTimestamp("timestamp")%>">
                <%  } else { %>
                        <img src="img/<%= data.getString("image")%>" title="<%= data.getTimestamp("timestamp")%>">
                <%  }  %>
                                  
            </a>
        </div>            
        <% } %>        
        <div id="new_sensor_image" style="display: none;"></div>
</div>
    
<div id="new_sensor"></div>
<script>
    <% data.last();  String Str = new String(data.getString("timestamp"));        %>
    setTimeout(function(){
        new_sensor_image(<%= id%>,<%= data.getString("id")%>);    
        time = (new Date('<%= Str.substring(0, 10)%>T<%= Str.substring(11, Str.length()-2)%>')).getTime();        
    },1000);
</script>
							
     
