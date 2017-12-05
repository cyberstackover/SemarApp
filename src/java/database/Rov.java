package database;
import java.sql.*;
public class Rov extends Konek{
    public Rov() throws ClassNotFoundException, SQLException{
        super();
    }
    
    public ResultSet GetAll() throws SQLException{        
        String sql;
        sql = "SELECT * FROM rov GROUP BY rov_id ORDER BY timestamp DESC";
        rs = super.QResult(sql);
        return rs;
    }    
    
    public int GetCountAll() throws SQLException{        
        String sql;
        sql = "SELECT * FROM rov GROUP BY rov_id ORDER BY timestamp DESC";
        rs = super.QResult(sql);        
        return super.NumRows();
    }
    
    public ResultSet GetById(String  bengkel) throws SQLException{        
        String sql;
        sql = "SELECT * FROM rov  WHERE rov_id = "+bengkel;
        sql += " ORDER BY timestamp ASC ";                
        rs = super.QResult(sql);
        return rs;
    }        
    
    public ResultSet GetById(String  bengkel, String id_old) throws SQLException{        
        String sql;
        sql = "SELECT * FROM rov  WHERE rov_id = "+bengkel +" AND id > "+id_old;
        sql += " ORDER BY timestamp ASC ";                
        rs = super.QResult(sql);
        return rs;
    }        
    
    public int CountGetById(String  bengkel, String id_old) throws SQLException{        
        String sql;
        sql = "SELECT * FROM rov  WHERE rov_id = "+bengkel +" AND id > "+id_old;
        sql += " ORDER BY timestamp ASC ";                
        rs = super.QResult(sql);
        return super.NumRows();
    }        
}
