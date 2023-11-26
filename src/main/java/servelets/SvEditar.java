/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servelets;

import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "SvEditar", urlPatterns = {"/SvEditar"})
public class SvEditar extends HttpServlet {
    Controlador control = new Controlador();
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if(!request.getParameter("id1").isEmpty()){
            int idUsu = Integer.parseInt(request.getParameter("id1"));
            Usuario usu = control.regresarUsuario(idUsu);
            HttpSession sesion = request.getSession();
            sesion.setAttribute("cliente", usu);
            response.sendRedirect("datos.jsp");
        }
        else{
            response.sendRedirect("profile.jsp");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String altIni = request.getParameter("altInicial");
        String pesoIni = request.getParameter("pesoInicial");
        String altMeta = request.getParameter("altMeta");
        String pesoMeta = request.getParameter("pesoMeta");
        
        Usuario usu = (Usuario)request.getSession().getAttribute("cliente");
        usu.setAlturaInicial(Integer.parseInt(altIni));
        usu.setPesoInicial(Integer.parseInt(pesoIni));
        usu.setAlturaMeta(Integer.parseInt(altMeta));
        usu.setPesoMeta(Integer.parseInt(pesoMeta));
        control.editar(usu);
        response.sendRedirect("profile.jsp");
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
