package database;
import java.sql.*;
public class Konek {
    private String Host = "jdbc:mysql://103.24.56.219:3306/karang";
    protected Connection connection = null;
    protected Statement statement = null;
    protected ResultSet rs = null;    
    protected PreparedStatement ps=null;
    public int ceks = 0;
    public Konek() throws ClassNotFoundException, SQLException{
        try{
            Class.forName("com.mysql.jdbc.Driver");
            this.connection = DriverManager.getConnection(Host, "root", "shadowmasterer2c");                        
        } catch(Exception e){
            System.out.println(e.getMessage());            
            System.out.println("Koneksi Database Bermasalah");            
        }
    }        
    
    public ResultSet QResult(String sql) throws SQLException{                
        statement = connection.createStatement();
        rs = statement.executeQuery(sql);        
        return this.rs;
    }
    public int NumRows() throws SQLException{
        rs.last();                
        int y = rs.getRow();
        rs.beforeFirst();
        return y;
    }
    
    public int Execute(String sql) throws SQLException{
        int updateinfo=0;
        ps=connection.prepareStatement(sql);        
        updateinfo=ps.executeUpdate();
        return updateinfo;
    }    
    public void closeKonek() throws SQLException{
        rs.close();
        statement.close();
        connection.close();
    }
}
