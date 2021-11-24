
package modelo;

import config.conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author SamiSanchez
 */
public class EventosDAO {
    
    Connection conexion;
    public EventosDAO(){
      
    conexion con = new conexion();
    try{
        conexion = con.getConexion();
    }catch(Exception e){
        System.out.println(e.toString());
    }
    
    
    
    }
    
    public List<Eventos> listarEventos(){
        
      PreparedStatement  ps;
      ResultSet rs;
      
      
     List<Eventos> lista = new ArrayList<>();
      
      try{
      
          ps = conexion.prepareStatement("SELECT id,codigo,nombre,cupos,precio FROM eventos");
          rs = ps.executeQuery();
          
          while(rs.next()){
              
              
              int id = rs.getInt("id");
              String codigo = rs.getString("codigo");
              String nombre = rs.getString("nombre");
              Double precio = rs.getDouble("precio");
              int cupos = rs.getInt("cupos");
              
              
              Eventos evento = new Eventos(id,cupos, codigo, nombre, precio);
              
              lista.add(evento);
            }
          return lista;
      
      } catch(SQLException e){
          System.out.println(e.toString());
          
         return null;
    
    
    }
        
    }
    
    
    
    public Eventos mostrarEvento(int _id){
        
      PreparedStatement  ps;
      ResultSet rs;
      Eventos evento = null;
     
      
      try{
      
          ps = conexion.prepareStatement("SELECT id,codigo,nombre,cupos,precio FROM eventos WHERE id=?");
          ps.setInt(1, _id);
          rs = ps.executeQuery();
          
          while(rs.next()){
              
              
              int id = rs.getInt("id");
              String codigo = rs.getString("codigo");
              String nombre = rs.getString("nombre");
              Double precio = rs.getDouble("precio");
              int cupos = rs.getInt("cupos");
              
              
              evento = new Eventos(id,cupos,codigo,nombre,precio);
            
            }
          return evento;
      
      } catch(SQLException e){
          System.out.println(e.toString());
          
         return null;
    
    
    }
        
    }
    
    
    public  boolean insertar(Eventos evento){
        
      PreparedStatement  ps;
        try{
      
          ps = conexion.prepareStatement("INSERT INTO eventos (codigo,nombre,precio,cupos)VALUES(?,?,?,?)");
          ps.setString(1,evento.getCodigo());
          ps.setString(2,evento.getNombre());
          ps.setDouble(3,evento.getPrecio());
          ps.setInt(4,evento.getCupos());
          ps.execute();
          return true;

      
      } catch(SQLException e){
          System.out.println(e.toString());
          
         return false;
    
    
    }
        
    }
    
    
    public  boolean actualizar (Eventos evento){
        
      PreparedStatement  ps;
        try{
      
          ps = conexion.prepareStatement("UPDATE eventos SET codigo=?,nombre=?,precio=?,cupos=? WHERE id =?");
          ps.setString(1,evento.getCodigo());
          ps.setString(2,evento.getNombre());
          ps.setDouble(3,evento.getPrecio());
          ps.setInt(4,evento.getCupos());
          ps.setInt(5,evento.getId());
          ps.execute();
          return true;

      
      } catch(SQLException e){
          System.out.println(e.toString());
          
         return false;
    
    
    }
        
    }
    
        
    public  boolean eliminar (int _id){
        
      PreparedStatement  ps;
        try{
      
          ps = conexion.prepareStatement("DELETE FROM eventos  WHERE id =?");
          ps.setInt(1, _id);
          ps.execute();
          return true;

      
      } catch(SQLException e){
          System.out.println(e.toString());
          
         return false;
    
    
    }
        
    }   
        
        
        
    
}


