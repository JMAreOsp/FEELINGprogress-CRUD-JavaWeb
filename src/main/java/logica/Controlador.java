/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

import java.util.List;
import persistencia.ControladorPersistencia;

/**
 *
 * @author areiza
 */
public class Controlador {
    ControladorPersistencia controlPersist = new ControladorPersistencia();
    
    public void crearUsuario(Usuario cliente){
        controlPersist.crearUsuario(cliente);
    }
    public Usuario regresarUsuario(int id){
        return controlPersist.regresarUsuario(id);
    }
    public List<Usuario> buscarUsuario(){
        return controlPersist.buscarUsuario();
    }

    public void editar(Usuario usu) {
       controlPersist.editar(usu);
    }

    public void eliminar(int idUsu) {
       controlPersist.eliminar(idUsu);
    }
}
