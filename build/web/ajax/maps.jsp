<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="database.Rov"%>
<%
    Rov db = new Rov();    
    ResultSet data ;         
    data = db.GetAll();    
%>
<script>           
     
    for(var i=0; i<marker.length; i++){
        marker[i].setMap(null);
    }
    marker = [];    
    <% while (data.next()) { %>          
        var Markertempat = new google.maps.Marker({
            position 	: new google.maps.LatLng(<%=data.getString("latitude") %>, <%=data.getString("longitude") %>),
            map         : mapmain,
            icon	: 'img/bengkel.png'
	});        
	marker.push(Markertempat);	        
	google.maps.event.addListener(Markertempat,'click',function() {				            
            tampil_popup(<%=data.getString("rov_id")%>,'<%=data.getString("rov_name")%>','<%=data.getString("tipe")%>');
            
	});        
    <% } %>    
</script>