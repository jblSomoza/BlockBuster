package org.pedroarmas.bean;

/**
 *
 * @author armas
 */
public class Productora {
    private short idProductora;  
    private String nombre;
    
    public Productora(){
    }
    
    public Productora(short idProductora, String nombre) {
        this.idProductora = idProductora;
        this.nombre = nombre;
    }
    
    
    public short getIdProductora() {
        return idProductora;
    }

    public void setIdProductora(short idProductora) {
        this.idProductora = idProductora;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }        

    @Override
    public String toString() {
        return getIdProductora() + " " + getNombre();
    }        
}
