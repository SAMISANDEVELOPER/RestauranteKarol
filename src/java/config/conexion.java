package config;

/*import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class conexion {
    public static Connection getConexion() throws ClassNotFoundException{
        
        String url ="jdbc:sqlserver://localhost:1433;"
                + "databaseName=Eventos;"
                + "user=sa;"
                + "password=12345;";
        
        try{
        Connection conexion = DriverManager.getConnection(url);
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
        System.out.println("Conexion exitosa");
        return conexion;
        }catch(Exception e){
            System.out.println(e.toString());
            return null;
        
        }
    }
    
}*/


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author SamiSanchez
 */
public class conexion {
    public static Connection getConexion(){
        
        String url ="jdbc:sqlserver://localhost:1433;"
                + "database=Eventos;";
        String username="sa";
        String password= "12345";
        
        try{
        Connection con = DriverManager.getConnection(url, username, password);
        return con;
        }catch(SQLException e){
            System.out.println(e.toString());
            return null;
        
        }
    }
    
}