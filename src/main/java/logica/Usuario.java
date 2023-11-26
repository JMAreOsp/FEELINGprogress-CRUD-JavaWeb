/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author areiza
 */
@Entity
public class Usuario implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String nombre;
    private String usuario;
    private String password;
    private int alturaInicial;
    private int pesoInicial;
    private int alturaMeta;
    private int pesoMeta;


    public Usuario() {
    }

    public Usuario(int id, String nombre, String usuario, String password, int alturaInicial, int pesoInicial, int alturaMeta, int pesoMeta) {
        this.id = id;
        this.nombre = nombre;
        this.usuario = usuario;
        this.password = password;
        this.alturaInicial = alturaInicial;
        this.pesoInicial = pesoInicial;
        this.alturaMeta = alturaMeta;
        this.pesoMeta = pesoMeta;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getAlturaInicial() {
        return alturaInicial;
    }

    public void setAlturaInicial(int alturaInicial) {
        this.alturaInicial = alturaInicial;
    }

    public int getPesoInicial() {
        return pesoInicial;
    }

    public void setPesoInicial(int pesoInicial) {
        this.pesoInicial = pesoInicial;
    }

    public int getAlturaMeta() {
        return alturaMeta;
    }

    public void setAlturaMeta(int alturaMeta) {
        this.alturaMeta = alturaMeta;
    }

    public int getPesoMeta() {
        return pesoMeta;
    }

    public void setPesoMeta(int pesoMeta) {
        this.pesoMeta = pesoMeta;
    }
    
}