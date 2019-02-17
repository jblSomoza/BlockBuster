package org.pedroarmas.controller;

import java.net.URL;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.ResourceBundle;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;

import javafx.scene.control.ComboBox;
import javafx.scene.control.TextField;
import javafx.scene.control.TableView;
import javafx.scene.control.TableColumn;
import javafx.scene.control.Button;
import javafx.scene.control.cell.PropertyValueFactory;

import javax.swing.JOptionPane;
import javafx.collections.FXCollections;

import org.pedroarmas.bean.Productora;
import org.pedroarmas.db.Conexion;
import org.pedroarmas.sistema.Principal;

/**
 *
 * @author armas
 */
public class ProductoraController implements Initializable{
    private enum operaciones {NUEVO, GUARDAR, ELIMINAR, EDITAR, ACTUALIZAR, CANCELAR, NINGUNO};
    private operaciones tipoDeOperacion = operaciones.NINGUNO;
    private Principal escenarioPrincipal;    
    private ObservableList<Productora> listaProductora; 
    
    @FXML private ComboBox cmbProductora;
    @FXML private TextField txtNombre;
    @FXML private TableView tblProductoras;    
    @FXML private TableColumn colIDProductora;
    @FXML private TableColumn colNombreProductora;
    @FXML private Button btnNuevo;
    @FXML private Button btnEliminar;
    @FXML private Button btnEditar;        
    
    
    @Override
    public void initialize(URL location, ResourceBundle resources) {
        cargarDatos();
        cmbProductora.setItems(getProductoras());
    }
    public void cargarDatos(){
        tblProductoras.setItems(getProductoras());
        colIDProductora.setCellValueFactory((new PropertyValueFactory<Productora, Integer>("idProductora")));
        colNombreProductora.setCellValueFactory((new PropertyValueFactory<Productora, String>("nombre")));
    }
    
    public ObservableList<Productora> getProductoras(){
        ArrayList<Productora> lista = new ArrayList<Productora>();
        try{
            PreparedStatement procedimiento = Conexion.getInstancia().getConexion().prepareCall("{call SP_ListarProductora}");
            ResultSet resultado = procedimiento.executeQuery();
            while(resultado.next()){
                lista.add(new Productora(resultado.getShort("idProductora"), resultado.getString("nombre")));
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        return listaProductora = FXCollections.observableList(lista);
    }
    
    public void seleccionarElemento(){
        if (tblProductoras.getSelectionModel().getSelectedIndex()>-1){
            cmbProductora.getSelectionModel().select(buscarProductora(((Productora)tblProductoras.getSelectionModel().getSelectedItem()).getIdProductora()));
            txtNombre.setText(((Productora)tblProductoras.getSelectionModel().getSelectedItem()).getNombre());
        }        
    }
    
    public Productora buscarProductora(short idProductora){
        Productora resultado = null;
        try{
            PreparedStatement procedimiento = Conexion.getInstancia().getConexion().prepareCall("{call SP_BuscarProductora(?)}");
            procedimiento.setInt(1, idProductora);
            ResultSet registro = procedimiento.executeQuery();
            while(registro.next()){
                resultado = new Productora(registro.getShort("idProductora"), registro.getString("nombre"));
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        
        return resultado;
    }
    
    public void nuevo(){
        switch(tipoDeOperacion){
            case NINGUNO:
                activarControles();
                limpiarControles();
                btnNuevo.setText("Guardar");
                btnEliminar.setText("Cancelar");
                btnEditar.setDisable(true);
                tipoDeOperacion = operaciones.GUARDAR;
                break;
            case GUARDAR:  
                agregar();
                limpiarControles();
                btnNuevo.setText("Nuevo");
                btnEliminar.setText("Eliminar");
                btnEditar.setDisable(false);
                tipoDeOperacion = operaciones.NINGUNO;
                cargarDatos();
                limpiarControles();
                cmbProductora.setItems(getProductoras());
                break;                
        }
    }
    
   public void agregar(){
        Productora registro = new Productora();
        registro.setNombre(txtNombre.getText());
        try{
            PreparedStatement procedimiento = Conexion.getInstancia().getConexion().prepareCall("{call SP_InsertarProductora(?)}");
            procedimiento.setString(1, registro.getNombre());
            procedimiento.execute();
            listaProductora.add(registro);
        }catch(SQLException e){
            e.printStackTrace();
        }        
    }
   
   public void editar(){
       switch(tipoDeOperacion){
           case NINGUNO:
               if (tblProductoras.getSelectionModel().getSelectedItem() != null){
                   btnEditar.setText("Actualizar");
                   btnNuevo.setDisable(true);
                   btnEliminar.setDisable(true);
                   txtNombre.setEditable(true);
                   tipoDeOperacion = operaciones.ACTUALIZAR;
               }else{
                   JOptionPane.showMessageDialog(null, "Debe seleccionar un dato a modificar");
               }
               break;
               
           case ACTUALIZAR:
               actualizar();
               btnEditar.setText("Editar");
               btnNuevo.setDisable(false);
               btnEliminar.setDisable(false);
               tipoDeOperacion = operaciones.NINGUNO;
               cargarDatos();
               break;
       }
   }
   
   public void actualizar(){
       try{
           PreparedStatement procedimiento = Conexion.getInstancia().getConexion().prepareCall("{call SP_ActualizarProductora(?,?)}");
           Productora registro = (Productora)tblProductoras.getSelectionModel().getSelectedItem();
           registro.setNombre(txtNombre.getText());
           procedimiento.setShort(1, registro.getIdProductora());
           procedimiento.setString(2, registro.getNombre());
           procedimiento.execute();
       }catch(SQLException e){
           e.getMessage();
           e.printStackTrace();
       }
   }
   
   public void eliminar(){
       switch(tipoDeOperacion){
           case GUARDAR:
               desactivarControles();
               btnNuevo.setText("Nuevo");
               btnEliminar.setText("Eliminar");
               btnEditar.setDisable(false);
               tipoDeOperacion = operaciones.NINGUNO;
               break;
            default:
                limpiarControles();
                if(tblProductoras.getSelectionModel().getSelectedItem() !=  null)
                {
                    int respuesta = JOptionPane.showConfirmDialog(null, "Esta seguro de eliminar el registro", "Eliminar Productora", JOptionPane.YES_NO_OPTION,JOptionPane.QUESTION_MESSAGE);
                        if(respuesta == JOptionPane.YES_OPTION){
                            try{
                                PreparedStatement procedimiento = Conexion.getInstancia().getConexion().prepareCall("{call SP_EliminarProductora(?)}");
                                procedimiento.setShort(1, ((Productora)tblProductoras.getSelectionModel().getSelectedItem()).getIdProductora());
                                procedimiento.execute();
                            }catch(SQLException e){
                                e.getMessage();
                                e.printStackTrace();
                            }
                       }
                }cargarDatos();
       }
   }
        
    public void desactivarControles(){
        txtNombre.setEditable(false);
        cmbProductora.setDisable(true);
    }
    
    public void activarControles(){
        txtNombre.setEditable(true);
        cmbProductora.setDisable(true);
    }
    
    public void limpiarControles(){
        txtNombre.setText("");
        cmbProductora.setValue("");
    }

    public Principal getEscenarioPrincipal() {
        return escenarioPrincipal;
    }

    public void setEscenarioPrincipal(Principal escenarioPrincipal) {
        this.escenarioPrincipal = escenarioPrincipal;
    }
    
    public void menuPrincipal(){
        escenarioPrincipal.menuPrincipal();
    }  
}
