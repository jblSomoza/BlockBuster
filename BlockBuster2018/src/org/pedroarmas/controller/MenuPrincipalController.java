package org.pedroarmas.controller;

import java.net.URL;
import java.util.ResourceBundle;
import javafx.fxml.Initializable;
import org.pedroarmas.sistema.Principal;

import org.pedroarmas.sistema.Principal;

/**
 *
 * @author armas
 */
public class MenuPrincipalController implements Initializable{
    private Principal escenarioPrincipal;
    
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        
    }

    public Principal getEscenarioPrincipal() {
        return escenarioPrincipal;
    }

    public void setEscenarioPrincipal(Principal escenarioPrincipal) {
        this.escenarioPrincipal = escenarioPrincipal;
    } 
    
    public void ventanaProductora(){
        escenarioPrincipal.ventanaProductoras();
    }
}
