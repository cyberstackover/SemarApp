<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="database.Rov"%>
<%
    String id = request.getParameter("id"); 
    String id_old = request.getParameter("id_old"); 
    Rov db = new Rov();        
    int total = db.CountGetById(id, id_old);    
    if(total > 0 ){  %>
    You Have <%= total%> New Sensor Value <a style="cursor: pointer" onclick="new_sensor(<%= id%>,<%= id_old%>)">Open This<a>
<%  } %>
							
     
