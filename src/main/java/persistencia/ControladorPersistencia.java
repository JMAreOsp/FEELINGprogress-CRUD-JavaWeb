/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package persistencia;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import logica.Usuario;
import persistencia.exceptions.NonexistentEntityException;

/**
 *
 * @author areiza
 */
public class ControladorPersistencia {
    UsuarioJpaController userJpa = new UsuarioJpaController();
    
    //CREAT
    public void crearUsuario(Usuario cliente){
        userJpa.create(cliente);
    }
    //READ
    public Usuario regresarUsuario(int id){
        return userJpa.findUsuario(id);
    }
    public List<Usuario> buscarUsuario(){
        return userJpa.findUsuarioEntities();
    }
    //UPDATE
    public void editar(Usuario usu) {
        try {
            userJpa.edit(usu);
        } catch (Exception ex) {
            Logger.getLogger(ControladorPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    //DESTROY
    public void eliminar(int idUsu) {
        try {
            userJpa.destroy(idUsu);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladorPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
