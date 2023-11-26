/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servelets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controlador;
import logica.Usuario;

/**
 *
 * @author areiza
 */
@WebServlet(name = "SvUsuario", urlPatterns = {"/SvUsuario"})
public class SvUsuario extends HttpServlet {
    Controlador control = new Controlador();
    
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("user");
        String password = request.getParameter("password");
        List<Usuario> lista = new ArrayList<>();
        lista = control.buscarUsuario();
        for(Usuario usu: lista){
            if(usu.getUsuario().equals(username)&&usu.getPassword().equals(password)){
                response.sendRedirect("profile.jsp");
                HttpSession sesion = request.getSession();
                sesion.setAttribute("cliente", usu);
            }
        }
 
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("name");
        String usuario = request.getParameter("username");
        String contraseña = request.getParameter("password1");
        
        Usuario cliente = new Usuario();
        if(nombre.isEmpty()|| usuario.isEmpty()||contraseña.isEmpty()){
            response.sendRedirect("index.jsp");
        }
        else{
            cliente.setNombre(nombre);
            cliente.setUsuario(usuario);
            cliente.setPassword(contraseña);
            cliente.setAlturaInicial(0);
            cliente.setPesoInicial(0);
            cliente.setAlturaMeta(0);
            cliente.setPesoMeta(0);
            control.crearUsuario(cliente);
            HttpSession sesion = request.getSession();
            sesion.setAttribute("cliente", cliente);
            response.sendRedirect("profile.jsp");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
