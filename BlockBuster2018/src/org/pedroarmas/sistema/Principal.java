package org.pedroarmas.sistema;
import java.net.URL;
import javafx.application.Application;
import javafx.fxml.Initializable;
import javafx.fxml.FXMLLoader;
import javafx.fxml.JavaFXBuilderFactory;
import javafx.scene.Scene;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Stage;
import java.io.InputStream;

import javafx.stage.Stage;
import org.pedroarmas.controller.MenuPrincipalController;
import org.pedroarmas.controller.ProductoraController;

/**
 *
 * @author armas
 */
public class Principal extends Application {
    private final String PAQUETE_VISTA = "/org/pedroarmas/view/";
    private Stage escenarioPrincipal;
    private Scene escena;

    @Override
    public void start(Stage escenarioPrincipal) throws Exception {        
        this.escenarioPrincipal = escenarioPrincipal;
        escenarioPrincipal.setTitle("Cinema Application");
        menuPrincipal();
        escenarioPrincipal.show();
    };

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        launch(args);
    }
    
    public void menuPrincipal(){
        try{
            MenuPrincipalController menuPrincipal = (MenuPrincipalController)cambiarEscena("MenuPrincipalView.fxml", 600, 400);
            menuPrincipal.setEscenarioPrincipal(this);
            }catch (Exception e)
            {
                e.getMessage();
                e.printStackTrace();
            }       
    }
    
    public void ventanaProductoras(){
        try{
           ProductoraController productora = (ProductoraController)cambiarEscena("ProductoraView.fxml", 600, 462);
           productora.setEscenarioPrincipal(this);    
            }catch (Exception e){
                e.getMessage();
                e.printStackTrace();
            }
    }
        
    public Initializable cambiarEscena(String fxml, int ancho, int alto) throws Exception{
        Initializable resultado = null;
        FXMLLoader cargadorFXML = new FXMLLoader();
        InputStream archivo = Principal.class.getResourceAsStream(PAQUETE_VISTA + fxml);
        cargadorFXML.setBuilderFactory(new JavaFXBuilderFactory());
        cargadorFXML.setLocation(Principal.class.getResource(PAQUETE_VISTA));
        escena = new Scene((AnchorPane)cargadorFXML.load(archivo),ancho,alto);                        
        escenarioPrincipal.setScene(escena);
        escenarioPrincipal.sizeToScene();
        resultado = (Initializable)cargadorFXML.getController();
        return resultado;
    }        
}
