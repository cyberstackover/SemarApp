<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="database.Rov"%>
<%
    String id = request.getParameter("id"); 
    String id_old = request.getParameter("id_old"); 
    Rov db = new Rov();        
    ResultSet data ;         
    data = db.GetById(id,id_old);    
    int no=0;
    while (data.next()) { no++; %>
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
<%  }
%>
							
     
