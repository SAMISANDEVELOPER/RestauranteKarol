
package modelo;

/**
 *
 * @author SamiSanchez
 */
public class Eventos {
    
    private int id,cupos;
    private String codigo,nombre;
    private Double precio;
    
    public Eventos(int id,int cupos,String codigo,String nombre,Double precio){
        
        this.id = id;
        this.cupos = cupos;
        this.codigo = codigo;
        this.nombre = nombre;
        this.precio = precio;
    
    }

    Eventos(int id, int cupos, String codigo, String nombre, int precio) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

       

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCupos() {
        return cupos;
    }

    public void setCupos(int cupos) {
        this.cupos = cupos;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }
}
