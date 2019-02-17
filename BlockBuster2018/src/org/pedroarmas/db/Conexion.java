package org.pedroarmas.db;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import com.microsoft.sqlserver.jdbc.SQLServerDriver;

/**
 *
 * @author armas
 */
public class Conexion {
    
    private Connection conexion;    
    private static Conexion instancia;
                                                                                  
    public Conexion(){
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
            conexion = DriverManager.getConnection("jdbc:sqlserver://localhost;DataBaseName=DBBlockBuster2017090","sa","123");
            
        } catch(ClassNotFoundException e){
            e.getMessage();
            e.printStackTrace();
        } catch (InstantiationException e){
            e.getMessage();
            e.printStackTrace();
        }catch (IllegalAccessException e){
            e.getMessage();
            e.printStackTrace();
        }catch (SQLException e){
            e.getMessage();
            e.printStackTrace();
        }                   
    }

    public static Conexion getInstancia(){
       if(instancia == null){
           instancia = new Conexion();
       }
       return instancia;
    }
   
    public Connection getConexion(){
        return conexion;
    }
    
    public void setConexion(Connection conexion){
        this.conexion = conexion;
    }   
}
