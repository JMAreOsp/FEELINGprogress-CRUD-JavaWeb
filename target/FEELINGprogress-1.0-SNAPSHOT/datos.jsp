<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear Primer Registro FEELING Progress </title>
    <link rel="icon" type="image/x-icon" href="imgs/FP.png" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet" />
</head>
<body id="placeLogin">
<% Usuario usuario = (Usuario)request.getSession().getAttribute("cliente");%>
    <section>
        <div class="text-center" id="logo"><img src="imgs/FEELING.png" alt="..." width="300"></div>
        <h1 class="text-center section-heading text-uppercase" id="titulos"><i><u>Hola, <%= usuario.getNombre() %></u></i></h1>
        <h1 class="text-center section-heading text-uppercase" id="titulos" ><i><u><p>ID: <%= usuario.getId() %></p></u></i></h1>
        <div class="text-center">
            <form id="contactForm" data-sb-form-api-token="API_TOKEN" action="SvEditar" method="POST" >
                <div class="row align-items-stretch mb-5">
                    <div class="col-md-6">
                        <h1 class="section-heading text-uppercase" id="titulos">Crea Tu Punto De Partida</h1>
                        <div class="col-md-6">
                            <div class="form-group mb-md-0" id="datos">
                                <!-- Weight-->
                                 <p id="titulos">Peso:</p>
                                <input class="form-control" id="Weight" type="number" placeholder="Peso en Kg *" name="pesoInicial" value="<%=usuario.getPesoInicial() %>"></input>
                            </div>
                            <div class="form-group mb-md-0" id="datos">
                                <!-- Height--> 
                                <p  id="titulos">Altura:</p>
                                <input class="form-control" id="Height" type="number" placeholder="Altura en cm *" name="altInicial" value= "<%=usuario.getAlturaInicial()%>" />                   
                            </div>
                        </div>
                    </div>
                    <div>
                        <h1 class="section-heading text-uppercase" id="titulos">Establece Tu Meta</h1>
                        <div class="col-md-6">
                            <div class="form-group mb-md-0 col-md-6" id="datos">
                                <!-- Weight-->
                                <p  id="titulos">Peso:</p>
                                <input class="form-control" id="Weight" type="number" placeholder="Peso en Kg *" name="pesoMeta" value="<%=usuario.getPesoMeta()%>" />
                            </div>
                            <div class="form-group mb-md-0 col-md-6" id="datos">
                                <!-- Height--> 
                                <p id="titulos">Altura:</p>
                                <input class="form-control" id="Height" type="number" placeholder="Altura en cm *" name="altMeta" value="<%=usuario.getAlturaMeta()%>" />                   
                            </div>
                        </div>
                    </div>
                </div>
          <!-- Submit Button-->
                <div class="text-center"><button class="btn btn-primary btn-xl text-uppercase" id="submitButton" type="submit">Guardar</button>
            </form>
        </div>
    </section>
      <!-- Footer-->
        <footer class="footer py-4">
            <div class="container">
                <div class="row align-items-center">
                    <div class="text-center">Copyright &copy; Juan Manuel Areiza Ospina 2023</div>
                   
                </div>
            </div>
        </footer>
</body>
</html>